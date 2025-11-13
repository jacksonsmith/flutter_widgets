import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class WidgetCategory extends Equatable {
  final String id;
  final String name;
  final String description;
  final IconData icon;
  final int widgetCount;

  const WidgetCategory({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.widgetCount,
  });

  @override
  List<Object?> get props => [id, name, description, icon, widgetCount];
}
