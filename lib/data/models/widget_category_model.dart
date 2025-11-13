import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_widgets/domain/entities/widget_category.dart';

part 'widget_category_model.freezed.dart';
part 'widget_category_model.g.dart';

@freezed
class WidgetCategoryModel with _$WidgetCategoryModel {
  const factory WidgetCategoryModel({
    required String id,
    required String name,
    required String description,
    required int iconCodePoint,
    required int widgetCount,
  }) = _WidgetCategoryModel;

  const WidgetCategoryModel._();

  factory WidgetCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$WidgetCategoryModelFromJson(json);

  WidgetCategory toEntity() {
    return WidgetCategory(
      id: id,
      name: name,
      description: description,
      icon: IconData(iconCodePoint, fontFamily: 'MaterialIcons'),
      widgetCount: widgetCount,
    );
  }

  factory WidgetCategoryModel.fromEntity(WidgetCategory entity) {
    return WidgetCategoryModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      iconCodePoint: entity.icon.codePoint,
      widgetCount: entity.widgetCount,
    );
  }
}
