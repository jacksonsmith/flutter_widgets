import 'package:equatable/equatable.dart';
import 'package:flutter_widgets/domain/entities/difficulty_level.dart';
import 'package:flutter_widgets/domain/entities/widget_property.dart';

class FlutterWidgetEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String categoryId;
  final String codeExample;
  final List<String> imports;
  final List<WidgetProperty> properties;
  final DifficultyLevel difficulty;
  final List<String> tags;
  final bool isFavorite;

  const FlutterWidgetEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.categoryId,
    required this.codeExample,
    required this.imports,
    required this.properties,
    required this.difficulty,
    required this.tags,
    this.isFavorite = false,
  });

  FlutterWidgetEntity copyWith({
    String? id,
    String? name,
    String? description,
    String? categoryId,
    String? codeExample,
    List<String>? imports,
    List<WidgetProperty>? properties,
    DifficultyLevel? difficulty,
    List<String>? tags,
    bool? isFavorite,
  }) {
    return FlutterWidgetEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      categoryId: categoryId ?? this.categoryId,
      codeExample: codeExample ?? this.codeExample,
      imports: imports ?? this.imports,
      properties: properties ?? this.properties,
      difficulty: difficulty ?? this.difficulty,
      tags: tags ?? this.tags,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        categoryId,
        codeExample,
        imports,
        properties,
        difficulty,
        tags,
        isFavorite,
      ];
}
