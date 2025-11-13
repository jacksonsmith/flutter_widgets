import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widgets/data/models/flutter_widget_model.dart';
import 'package:flutter_widgets/data/models/widget_property_model.dart';
import 'package:flutter_widgets/domain/entities/difficulty_level.dart';
import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/entities/widget_property.dart';

void main() {
  group('FlutterWidgetModel', () {
    const tModel = FlutterWidgetModel(
      id: 'container',
      name: 'Container',
      description: 'A convenience widget',
      categoryId: 'layout',
      codeExample: 'Container()',
      imports: ['package:flutter/material.dart'],
      properties: [
        WidgetPropertyModel(
          name: 'child',
          type: 'Widget?',
          description: 'The child widget',
          isRequired: false,
        ),
      ],
      difficulty: 'beginner',
      tags: ['layout', 'basic'],
      isFavorite: false,
    );

    const tEntity = FlutterWidgetEntity(
      id: 'container',
      name: 'Container',
      description: 'A convenience widget',
      categoryId: 'layout',
      codeExample: 'Container()',
      imports: ['package:flutter/material.dart'],
      properties: [
        WidgetProperty(
          name: 'child',
          type: 'Widget?',
          description: 'The child widget',
          isRequired: false,
        ),
      ],
      difficulty: DifficultyLevel.beginner,
      tags: ['layout', 'basic'],
      isFavorite: false,
    );

    test('should convert to entity correctly', () {
      final result = tModel.toEntity();
      expect(result.id, equals(tEntity.id));
      expect(result.name, equals(tEntity.name));
      expect(result.difficulty, equals(DifficultyLevel.beginner));
    });

    test('should convert from entity correctly', () {
      final result = FlutterWidgetModel.fromEntity(tEntity);
      expect(result.id, equals(tModel.id));
      expect(result.difficulty, equals('beginner'));
    });

    test('should serialize to JSON correctly', () {
      final json = tModel.toJson();
      expect(json['id'], 'container');
      expect(json['name'], 'Container');
      expect(json['difficulty'], 'beginner');
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'id': 'container',
        'name': 'Container',
        'description': 'A convenience widget',
        'categoryId': 'layout',
        'codeExample': 'Container()',
        'imports': ['package:flutter/material.dart'],
        'properties': [
          {
            'name': 'child',
            'type': 'Widget?',
            'description': 'The child widget',
            'isRequired': false,
          }
        ],
        'difficulty': 'beginner',
        'tags': ['layout', 'basic'],
        'isFavorite': false,
      };
      final result = FlutterWidgetModel.fromJson(json);
      expect(result.id, equals('container'));
    });
  });
}
