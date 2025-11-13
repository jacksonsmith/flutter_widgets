import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_widgets/data/models/widget_property_model.dart';
import 'package:flutter_widgets/domain/entities/difficulty_level.dart';
import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';

part 'flutter_widget_model.freezed.dart';
part 'flutter_widget_model.g.dart';

@freezed
class FlutterWidgetModel with _$FlutterWidgetModel {
  const factory FlutterWidgetModel({
    required String id,
    required String name,
    required String description,
    required String categoryId,
    required String codeExample,
    required List<String> imports,
    required List<WidgetPropertyModel> properties,
    required String difficulty,
    required List<String> tags,
    @Default(false) bool isFavorite,
  }) = _FlutterWidgetModel;

  const FlutterWidgetModel._();

  factory FlutterWidgetModel.fromJson(Map<String, dynamic> json) =>
      _$FlutterWidgetModelFromJson(json);

  FlutterWidgetEntity toEntity() {
    return FlutterWidgetEntity(
      id: id,
      name: name,
      description: description,
      categoryId: categoryId,
      codeExample: codeExample,
      imports: imports,
      properties: properties.map((p) => p.toEntity()).toList(),
      difficulty: DifficultyLevel.values.firstWhere(
        (e) => e.toString() == 'DifficultyLevel.$difficulty',
        orElse: () => DifficultyLevel.beginner,
      ),
      tags: tags,
      isFavorite: isFavorite,
    );
  }

  factory FlutterWidgetModel.fromEntity(FlutterWidgetEntity entity) {
    return FlutterWidgetModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      categoryId: entity.categoryId,
      codeExample: entity.codeExample,
      imports: entity.imports,
      properties: entity.properties
          .map((p) => WidgetPropertyModel.fromEntity(p))
          .toList(),
      difficulty: entity.difficulty.name,
      tags: entity.tags,
      isFavorite: entity.isFavorite,
    );
  }
}
