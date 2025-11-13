import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/di/injection.dart';
import 'package:flutter_widgets/domain/entities/widget_category.dart';
import 'package:flutter_widgets/presentation/viewmodels/category_widgets_viewmodel.dart';
import 'package:flutter_widgets/presentation/views/widget_detail_view.dart';
import 'package:provider/provider.dart';

class CategoryWidgetsView extends StatelessWidget {
  final WidgetCategory category;

  const CategoryWidgetsView({
    required this.category,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          getIt<CategoryWidgetsViewModel>()..loadWidgets(category.id),
      child: Scaffold(
        appBar: AppBar(
          title: Text(category.name),
        ),
        body: Consumer<CategoryWidgetsViewModel>(
          builder: (context, viewModel, _) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (viewModel.error != null) {
              return Center(child: Text(viewModel.error!));
            }

            if (viewModel.widgets.isEmpty) {
              return const Center(child: Text('Nenhum widget encontrado'));
            }

            return ListView.builder(
              itemCount: viewModel.widgets.length,
              itemBuilder: (context, index) {
                final widget = viewModel.widgets[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    title: Text(widget.name),
                    subtitle: Text(
                      widget.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        widget.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: widget.isFavorite ? Colors.red : null,
                      ),
                      onPressed: () {
                        viewModel.toggleFavorite(widget.id);
                      },
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (_) => WidgetDetailView(widgetId: widget.id),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
