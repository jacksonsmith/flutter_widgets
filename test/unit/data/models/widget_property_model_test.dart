import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widgets/data/models/widget_property_model.dart';
import 'package:flutter_widgets/domain/entities/widget_property.dart';

void main() {
  group('WidgetPropertyModel', () {
    const tModel = WidgetPropertyModel(
      name: 'child',
      type: 'Widget',
      description: 'The child widget',
      isRequired: false,
      defaultValue: 'null',
    );

    const tEntity = WidgetProperty(
      name: 'child',
      type: 'Widget',
      description: 'The child widget',
      isRequired: false,
      defaultValue: 'null',
    );

    test('should convert to entity correctly', () {
      final result = tModel.toEntity();
      expect(result, equals(tEntity));
    });

    test('should convert from entity correctly', () {
      final result = WidgetPropertyModel.fromEntity(tEntity);
      expect(result, equals(tModel));
    });

    test('should serialize to JSON correctly', () {
      final json = tModel.toJson();
      expect(json['name'], 'child');
      expect(json['type'], 'Widget');
      expect(json['isRequired'], false);
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'name': 'child',
        'type': 'Widget',
        'description': 'The child widget',
        'isRequired': false,
        'defaultValue': 'null',
      };
      final result = WidgetPropertyModel.fromJson(json);
      expect(result, equals(tModel));
    });
  });
}
