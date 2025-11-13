import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widgets/data/models/widget_category_model.dart';
import 'package:flutter_widgets/domain/entities/widget_category.dart';

void main() {
  group('WidgetCategoryModel', () {
    const tModel = WidgetCategoryModel(
      id: 'layout',
      name: 'Layout',
      description: 'Layout widgets',
      iconCodePoint: 0xe8f1,
      widgetCount: 10,
    );

    final tEntity = WidgetCategory(
      id: 'layout',
      name: 'Layout',
      description: 'Layout widgets',
      icon: const IconData(0xe8f1, fontFamily: 'MaterialIcons'),
      widgetCount: 10,
    );

    test('should convert to entity correctly', () {
      final result = tModel.toEntity();
      expect(result.id, equals(tEntity.id));
      expect(result.name, equals(tEntity.name));
      expect(result.icon.codePoint, equals(tEntity.icon.codePoint));
    });

    test('should convert from entity correctly', () {
      final result = WidgetCategoryModel.fromEntity(tEntity);
      expect(result, equals(tModel));
    });

    test('should serialize to JSON correctly', () {
      final json = tModel.toJson();
      expect(json['id'], 'layout');
      expect(json['name'], 'Layout');
      expect(json['iconCodePoint'], 0xe8f1);
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'id': 'layout',
        'name': 'Layout',
        'description': 'Layout widgets',
        'iconCodePoint': 0xe8f1,
        'widgetCount': 10,
      };
      final result = WidgetCategoryModel.fromJson(json);
      expect(result, equals(tModel));
    });
  });
}
