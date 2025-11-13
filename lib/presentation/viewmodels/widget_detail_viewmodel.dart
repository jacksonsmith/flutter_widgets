import 'package:flutter/material.dart';
import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/usecases/get_widget_by_id_usecase.dart';
import 'package:flutter_widgets/domain/usecases/toggle_favorite_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class WidgetDetailViewModel extends ChangeNotifier {
  final GetWidgetByIdUseCase _getWidgetByIdUseCase;
  final ToggleFavoriteUseCase _toggleFavoriteUseCase;

  WidgetDetailViewModel(
    this._getWidgetByIdUseCase,
    this._toggleFavoriteUseCase,
  );

  FlutterWidgetEntity? _widget;
  bool _isLoading = false;
  String? _error;

  FlutterWidgetEntity? get widget => _widget;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadWidget(String widgetId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _widget = await _getWidgetByIdUseCase(widgetId);
      _error = null;
    } catch (e) {
      _error = 'Erro ao carregar widget';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> toggleFavorite() async {
    if (_widget == null) return;

    await _toggleFavoriteUseCase(_widget!.id);
    await loadWidget(_widget!.id);
  }
}
