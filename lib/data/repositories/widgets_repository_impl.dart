import 'package:flutter_widgets/data/datasources/local/widgets_local_datasource.dart';
import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/entities/widget_category.dart';
import 'package:flutter_widgets/domain/repositories/widgets_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WidgetsRepository)
class WidgetsRepositoryImpl implements WidgetsRepository {
  final WidgetsLocalDataSource _localDataSource;

  WidgetsRepositoryImpl(this._localDataSource);

  @override
  Future<List<WidgetCategory>> getCategories() async {
    final models = await _localDataSource.getCategories();
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<FlutterWidgetEntity>> getAllWidgets() async {
    final models = await _localDataSource.getWidgets();
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<FlutterWidgetEntity>> getWidgetsByCategory(
    String categoryId,
  ) async {
    final models = await _localDataSource.getWidgetsByCategory(categoryId);
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<FlutterWidgetEntity?> getWidgetById(String id) async {
    final model = await _localDataSource.getWidgetById(id);
    return model?.toEntity();
  }

  @override
  Future<List<FlutterWidgetEntity>> getFavoriteWidgets() async {
    final allWidgets = await getAllWidgets();
    return allWidgets.where((widget) => widget.isFavorite).toList();
  }

  @override
  Future<void> toggleFavorite(String widgetId) async {
    await _localDataSource.toggleFavorite(widgetId);
  }

  @override
  Future<bool> isFavorite(String widgetId) async {
    return _localDataSource.isFavorite(widgetId);
  }

  @override
  Future<List<FlutterWidgetEntity>> searchWidgets(String query) async {
    final allWidgets = await getAllWidgets();
    final lowercaseQuery = query.toLowerCase();

    return allWidgets.where((widget) {
      return widget.name.toLowerCase().contains(lowercaseQuery) ||
          widget.description.toLowerCase().contains(lowercaseQuery) ||
          widget.tags.any((tag) => tag.toLowerCase().contains(lowercaseQuery));
    }).toList();
  }
}
