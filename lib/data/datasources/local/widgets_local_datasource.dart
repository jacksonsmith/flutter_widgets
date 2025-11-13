import 'package:flutter_widgets/data/datasources/mock_data.dart';
import 'package:flutter_widgets/data/models/flutter_widget_model.dart';
import 'package:flutter_widgets/data/models/widget_category_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class WidgetsLocalDataSource {
  Future<List<WidgetCategoryModel>> getCategories();
  Future<List<FlutterWidgetModel>> getWidgets();
  Future<List<FlutterWidgetModel>> getWidgetsByCategory(String categoryId);
  Future<FlutterWidgetModel?> getWidgetById(String id);
  Future<List<String>> getFavoriteIds();
  Future<void> toggleFavorite(String widgetId);
  Future<bool> isFavorite(String widgetId);
}

@LazySingleton(as: WidgetsLocalDataSource)
class WidgetsLocalDataSourceImpl implements WidgetsLocalDataSource {
  final SharedPreferences _prefs;

  static const String _favoritesKey = 'favorite_widgets';

  WidgetsLocalDataSourceImpl(this._prefs);

  @override
  Future<List<WidgetCategoryModel>> getCategories() async {
    // Simular delay de rede
    await Future.delayed(const Duration(milliseconds: 100));
    return MockData.getCategories();
  }

  @override
  Future<List<FlutterWidgetModel>> getWidgets() async {
    await Future.delayed(const Duration(milliseconds: 150));
    final widgets = MockData.getWidgets();
    final favoriteIds = await getFavoriteIds();

    return widgets.map((widget) {
      return widget.copyWith(
        isFavorite: favoriteIds.contains(widget.id),
      );
    }).toList();
  }

  @override
  Future<List<FlutterWidgetModel>> getWidgetsByCategory(
    String categoryId,
  ) async {
    await Future.delayed(const Duration(milliseconds: 100));
    final allWidgets = await getWidgets();
    return allWidgets.where((w) => w.categoryId == categoryId).toList();
  }

  @override
  Future<FlutterWidgetModel?> getWidgetById(String id) async {
    await Future.delayed(const Duration(milliseconds: 50));
    final allWidgets = await getWidgets();
    try {
      return allWidgets.firstWhere((w) => w.id == id);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<String>> getFavoriteIds() async {
    return _prefs.getStringList(_favoritesKey) ?? [];
  }

  @override
  Future<void> toggleFavorite(String widgetId) async {
    final favorites = await getFavoriteIds();
    if (favorites.contains(widgetId)) {
      favorites.remove(widgetId);
    } else {
      favorites.add(widgetId);
    }
    await _prefs.setStringList(_favoritesKey, favorites);
  }

  @override
  Future<bool> isFavorite(String widgetId) async {
    final favorites = await getFavoriteIds();
    return favorites.contains(widgetId);
  }
}
