import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_widgets/domain/entities/widget_property.dart';

part 'widget_property_model.freezed.dart';
part 'widget_property_model.g.dart';

@freezed
class WidgetPropertyModel with _$WidgetPropertyModel {
  const factory WidgetPropertyModel({
    required String name,
    required String type,
    required String description,
    required bool isRequired,
    String? defaultValue,
  }) = _WidgetPropertyModel;

  const WidgetPropertyModel._();

  factory WidgetPropertyModel.fromJson(Map<String, dynamic> json) =>
      _$WidgetPropertyModelFromJson(json);

  WidgetProperty toEntity() {
    return WidgetProperty(
      name: name,
      type: type,
      description: description,
      isRequired: isRequired,
      defaultValue: defaultValue,
    );
  }

  factory WidgetPropertyModel.fromEntity(WidgetProperty entity) {
    return WidgetPropertyModel(
      name: entity.name,
      type: entity.type,
      description: entity.description,
      isRequired: entity.isRequired,
      defaultValue: entity.defaultValue,
    );
  }
}
