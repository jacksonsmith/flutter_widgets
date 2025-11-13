import 'package:equatable/equatable.dart';

class WidgetProperty extends Equatable {
  final String name;
  final String type;
  final String description;
  final bool isRequired;
  final String? defaultValue;

  const WidgetProperty({
    required this.name,
    required this.type,
    required this.description,
    required this.isRequired,
    this.defaultValue,
  });

  @override
  List<Object?> get props => [name, type, description, isRequired, defaultValue];
}
