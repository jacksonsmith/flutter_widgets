enum DifficultyLevel {
  beginner,
  intermediate,
  advanced;

  String get displayName {
    switch (this) {
      case DifficultyLevel.beginner:
        return 'Iniciante';
      case DifficultyLevel.intermediate:
        return 'Intermediário';
      case DifficultyLevel.advanced:
        return 'Avançado';
    }
  }
}
