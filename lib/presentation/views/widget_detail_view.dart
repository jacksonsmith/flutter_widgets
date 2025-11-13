import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets/core/constants/app_strings.dart';
import 'package:flutter_widgets/core/di/injection.dart';
import 'package:flutter_widgets/presentation/viewmodels/widget_detail_viewmodel.dart';
import 'package:flutter_widgets/presentation/widgets/widget_preview.dart';
import 'package:provider/provider.dart';

class WidgetDetailView extends StatelessWidget {
  final String widgetId;

  const WidgetDetailView({
    required this.widgetId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<WidgetDetailViewModel>()..loadWidget(widgetId),
      child: Consumer<WidgetDetailViewModel>(
        builder: (context, viewModel, _) {
          if (viewModel.isLoading) {
            return Scaffold(
              appBar: AppBar(),
              body: const Center(child: CircularProgressIndicator()),
            );
          }

          if (viewModel.error != null || viewModel.widget == null) {
            return Scaffold(
              appBar: AppBar(),
              body: Center(child: Text(viewModel.error ?? 'Widget not found')),
            );
          }

          final widget = viewModel.widget!;

          return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text(widget.name),
                actions: [
                  IconButton(
                    icon: Icon(
                      widget.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: widget.isFavorite ? Colors.red : null,
                    ),
                    onPressed: viewModel.toggleFavorite,
                  ),
                ],
                bottom: const TabBar(
                  tabs: [
                    Tab(text: AppStrings.tabPreview),
                    Tab(text: AppStrings.tabCode),
                    Tab(text: AppStrings.tabProperties),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  // Preview Tab
                  WidgetPreview(widgetEntity: widget),
                  // Code Tab
                  SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Exemplo',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            IconButton(
                              icon: const Icon(Icons.copy),
                              onPressed: () {
                                Clipboard.setData(
                                  ClipboardData(text: widget.codeExample),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(AppStrings.codeCopied),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            widget.codeExample,
                            style: const TextStyle(
                              fontFamily: 'monospace',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Properties Tab
                  ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: widget.properties.length,
                    itemBuilder: (context, index) {
                      final property = widget.properties[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          title: Text(property.name),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Type: ${property.type}'),
                              Text(property.description),
                              if (property.defaultValue != null)
                                Text('Default: ${property.defaultValue}'),
                            ],
                          ),
                          trailing: property.isRequired
                              ? const Chip(label: Text('Required'))
                              : const Chip(label: Text('Optional')),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
