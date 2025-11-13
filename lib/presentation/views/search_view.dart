import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/constants/app_strings.dart';
import 'package:flutter_widgets/core/di/injection.dart';
import 'package:flutter_widgets/presentation/viewmodels/search_viewmodel.dart';
import 'package:flutter_widgets/presentation/views/widget_detail_view.dart';
import 'package:provider/provider.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<SearchViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Consumer<SearchViewModel>(
            builder: (context, viewModel, _) {
              return TextField(
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: AppStrings.searchHint,
                  border: InputBorder.none,
                ),
                onChanged: viewModel.search,
              );
            },
          ),
        ),
        body: Consumer<SearchViewModel>(
          builder: (context, viewModel, _) {
            if (!viewModel.showResults) {
              return const Center(child: Text(AppStrings.typeToSearch));
            }

            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (!viewModel.hasResults) {
              return const Center(child: Text(AppStrings.noResults));
            }

            return ListView.builder(
              itemCount: viewModel.results.length,
              itemBuilder: (context, index) {
                final widget = viewModel.results[index];
                return ListTile(
                  title: Text(widget.name),
                  subtitle: Text(
                    widget.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) => WidgetDetailView(widgetId: widget.id),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
