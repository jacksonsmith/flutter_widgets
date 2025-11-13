import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/entities/widget_category.dart';

abstract class WidgetsRepository {
  Future<List<WidgetCategory>> getCategories();
  Future<List<FlutterWidgetEntity>> getAllWidgets();
  Future<List<FlutterWidgetEntity>> getWidgetsByCategory(String categoryId);
  Future<FlutterWidgetEntity?> getWidgetById(String id);
  Future<List<FlutterWidgetEntity>> getFavoriteWidgets();
  Future<void> toggleFavorite(String widgetId);
  Future<bool> isFavorite(String widgetId);
  Future<List<FlutterWidgetEntity>> searchWidgets(String query);
}
