import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/constants/app_strings.dart';
import 'package:flutter_widgets/core/di/injection.dart';
import 'package:flutter_widgets/presentation/viewmodels/favorites_viewmodel.dart';
import 'package:flutter_widgets/presentation/views/widget_detail_view.dart';
import 'package:provider/provider.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<FavoritesViewModel>()..loadFavorites(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.favorites),
        ),
        body: Consumer<FavoritesViewModel>(
          builder: (context, viewModel, _) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (!viewModel.hasFavorites) {
              return const Center(child: Text(AppStrings.noFavorites));
            }

            return ListView.builder(
              itemCount: viewModel.favorites.length,
              itemBuilder: (context, index) {
                final widget = viewModel.favorites[index];
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
                      icon: const Icon(Icons.favorite, color: Colors.red),
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
