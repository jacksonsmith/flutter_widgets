import 'package:flutter/material.dart';
import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/usecases/get_favorite_widgets_usecase.dart';
import 'package:flutter_widgets/domain/usecases/toggle_favorite_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class FavoritesViewModel extends ChangeNotifier {
  final GetFavoriteWidgetsUseCase _getFavoriteWidgetsUseCase;
  final ToggleFavoriteUseCase _toggleFavoriteUseCase;

  FavoritesViewModel(
    this._getFavoriteWidgetsUseCase,
    this._toggleFavoriteUseCase,
  );

  List<FlutterWidgetEntity> _favorites = [];
  bool _isLoading = false;
  String? _error;

  List<FlutterWidgetEntity> get favorites => _favorites;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get hasFavorites => _favorites.isNotEmpty;

  Future<void> loadFavorites() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _favorites = await _getFavoriteWidgetsUseCase();
      _error = null;
    } catch (e) {
      _error = 'Erro ao carregar favoritos';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> toggleFavorite(String widgetId) async {
    await _toggleFavoriteUseCase(widgetId);
    await loadFavorites();
  }
}
