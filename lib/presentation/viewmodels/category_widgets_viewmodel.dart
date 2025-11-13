import 'package:flutter/material.dart';
import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/usecases/get_widgets_by_category_usecase.dart';
import 'package:flutter_widgets/domain/usecases/toggle_favorite_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryWidgetsViewModel extends ChangeNotifier {
  final GetWidgetsByCategoryUseCase _getWidgetsByCategoryUseCase;
  final ToggleFavoriteUseCase _toggleFavoriteUseCase;

  CategoryWidgetsViewModel(
    this._getWidgetsByCategoryUseCase,
    this._toggleFavoriteUseCase,
  );

  List<FlutterWidgetEntity> _widgets = [];
  bool _isLoading = false;
  String? _error;

  List<FlutterWidgetEntity> get widgets => _widgets;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadWidgets(String categoryId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _widgets = await _getWidgetsByCategoryUseCase(categoryId);
      _error = null;
    } catch (e) {
      _error = 'Erro ao carregar widgets';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> toggleFavorite(String widgetId) async {
    await _toggleFavoriteUseCase(widgetId);
    // Reload to update favorite status
    final categoryId = _widgets.first.categoryId;
    await loadWidgets(categoryId);
  }
}
