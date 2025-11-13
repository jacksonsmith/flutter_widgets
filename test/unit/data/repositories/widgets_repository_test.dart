import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widgets/data/datasources/local/widgets_local_datasource.dart';
import 'package:flutter_widgets/data/models/flutter_widget_model.dart';
import 'package:flutter_widgets/data/models/widget_category_model.dart';
import 'package:flutter_widgets/data/models/widget_property_model.dart';
import 'package:flutter_widgets/data/repositories/widgets_repository_impl.dart';
import 'package:flutter_widgets/domain/entities/difficulty_level.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'widgets_repository_test.mocks.dart';

@GenerateMocks([WidgetsLocalDataSource])
void main() {
  late WidgetsRepositoryImpl repository;
  late MockWidgetsLocalDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockWidgetsLocalDataSource();
    repository = WidgetsRepositoryImpl(mockDataSource);
  });

  group('getCategories', () {
    final tCategoryModels = [
      const WidgetCategoryModel(
        id: 'layout',
        name: 'Layout',
        description: 'Layout widgets',
        iconCodePoint: 0xe8f1,
        widgetCount: 10,
      ),
    ];

    test('should return list of categories from data source', () async {
      // Arrange
      when(mockDataSource.getCategories())
          .thenAnswer((_) async => tCategoryModels);

      // Act
      final result = await repository.getCategories();

      // Assert
      expect(result.length, 1);
      expect(result[0].id, 'layout');
      verify(mockDataSource.getCategories());
      verifyNoMoreInteractions(mockDataSource);
    });
  });

  group('getAllWidgets', () {
    final tWidgetModels = [
      const FlutterWidgetModel(
        id: 'container',
        name: 'Container',
        description: 'A container widget',
        categoryId: 'layout',
        codeExample: 'Container()',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Child widget',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['layout'],
        isFavorite: false,
      ),
    ];

    test('should return list of widgets from data source', () async {
      // Arrange
      when(mockDataSource.getWidgets()).thenAnswer((_) async => tWidgetModels);

      // Act
      final result = await repository.getAllWidgets();

      // Assert
      expect(result.length, 1);
      expect(result[0].id, 'container');
      expect(result[0].difficulty, DifficultyLevel.beginner);
      verify(mockDataSource.getWidgets());
    });
  });

  group('getWidgetsByCategory', () {
    final tWidgetModels = [
      const FlutterWidgetModel(
        id: 'container',
        name: 'Container',
        description: 'A container widget',
        categoryId: 'layout',
        codeExample: 'Container()',
        imports: ['package:flutter/material.dart'],
        properties: [],
        difficulty: 'beginner',
        tags: ['layout'],
      ),
    ];

    test('should return widgets filtered by category', () async {
      // Arrange
      when(mockDataSource.getWidgetsByCategory('layout'))
          .thenAnswer((_) async => tWidgetModels);

      // Act
      final result = await repository.getWidgetsByCategory('layout');

      // Assert
      expect(result.length, 1);
      expect(result[0].categoryId, 'layout');
      verify(mockDataSource.getWidgetsByCategory('layout'));
    });
  });

  group('searchWidgets', () {
    final tWidgetModels = [
      const FlutterWidgetModel(
        id: 'container',
        name: 'Container',
        description: 'A box model widget',
        categoryId: 'layout',
        codeExample: 'Container()',
        imports: ['package:flutter/material.dart'],
        properties: [],
        difficulty: 'beginner',
        tags: ['layout', 'box'],
      ),
      const FlutterWidgetModel(
        id: 'text',
        name: 'Text',
        description: 'Displays text',
        categoryId: 'material',
        codeExample: 'Text("Hello")',
        imports: ['package:flutter/material.dart'],
        properties: [],
        difficulty: 'beginner',
        tags: ['text', 'material'],
      ),
    ];

    test('should search widgets by name', () async {
      // Arrange
      when(mockDataSource.getWidgets()).thenAnswer((_) async => tWidgetModels);

      // Act
      final result = await repository.searchWidgets('container');

      // Assert
      expect(result.length, 1);
      expect(result[0].name, 'Container');
    });

    test('should search widgets by description', () async {
      // Arrange
      when(mockDataSource.getWidgets()).thenAnswer((_) async => tWidgetModels);

      // Act
      final result = await repository.searchWidgets('box');

      // Assert
      expect(result.length, 1);
      expect(result[0].id, 'container');
    });

    test('should search widgets by tags', () async {
      // Arrange
      when(mockDataSource.getWidgets()).thenAnswer((_) async => tWidgetModels);

      // Act
      final result = await repository.searchWidgets('text');

      // Assert
      expect(result.length, 1);
      expect(result[0].id, 'text');
    });

    test('should be case insensitive', () async {
      // Arrange
      when(mockDataSource.getWidgets()).thenAnswer((_) async => tWidgetModels);

      // Act
      final result = await repository.searchWidgets('CONTAINER');

      // Assert
      expect(result.length, 1);
      expect(result[0].name, 'Container');
    });
  });

  group('getFavoriteWidgets', () {
    final tWidgetModels = [
      const FlutterWidgetModel(
        id: 'container',
        name: 'Container',
        description: 'A container',
        categoryId: 'layout',
        codeExample: 'Container()',
        imports: ['package:flutter/material.dart'],
        properties: [],
        difficulty: 'beginner',
        tags: ['layout'],
        isFavorite: true,
      ),
      const FlutterWidgetModel(
        id: 'text',
        name: 'Text',
        description: 'Text widget',
        categoryId: 'material',
        codeExample: 'Text("Hi")',
        imports: ['package:flutter/material.dart'],
        properties: [],
        difficulty: 'beginner',
        tags: ['text'],
        isFavorite: false,
      ),
    ];

    test('should return only favorite widgets', () async {
      // Arrange
      when(mockDataSource.getWidgets()).thenAnswer((_) async => tWidgetModels);

      // Act
      final result = await repository.getFavoriteWidgets();

      // Assert
      expect(result.length, 1);
      expect(result[0].id, 'container');
      expect(result[0].isFavorite, true);
    });
  });

  group('toggleFavorite', () {
    test('should call data source toggleFavorite', () async {
      // Arrange
      when(mockDataSource.toggleFavorite('container'))
          .thenAnswer((_) async => {});

      // Act
      await repository.toggleFavorite('container');

      // Assert
      verify(mockDataSource.toggleFavorite('container'));
    });
  });

  group('isFavorite', () {
    test('should return favorite status from data source', () async {
      // Arrange
      when(mockDataSource.isFavorite('container'))
          .thenAnswer((_) async => true);

      // Act
      final result = await repository.isFavorite('container');

      // Assert
      expect(result, true);
      verify(mockDataSource.isFavorite('container'));
    });
  });
}
