# FLUTTER WIDGETS - Tarefas Acionáveis

**Versão**: 1.0  
**Data**: 2025-11-12  
**Status**: Pronto para Execução

---

## 📑 Índice

1. [Como Usar Este Documento](#como-usar-este-documento)
2. [Status das Tarefas](#status-das-tarefas)
3. [FASE 0: Setup e Fundação](#fase-0-setup-e-fundação)
4. [FASE 1: Data Layer](#fase-1-data-layer)
5. [FASE 2: Domain Layer](#fase-2-domain-layer)
6. [FASE 3: Presentation - ViewModels](#fase-3-presentation---viewmodels)
7. [FASE 4: Presentation - Views](#fase-4-presentation---views)
8. [FASE 5: Integration Tests](#fase-5-integration-tests)
9. [FASE 6: E2E Tests](#fase-6-e2e-tests)
10. [FASE 7: Polish & Release](#fase-7-polish--release)
11. [Comandos de Referência Rápida](#comandos-de-referência-rápida)

---

## 1. Como Usar Este Documento

### 📋 Convenções

- **[ ]** - Tarefa pendente
- **[🔄]** - Tarefa em progresso
- **[✅]** - Tarefa completa
- **[⚠️]** - Tarefa bloqueada/com problema
- **[🔥]** - Tarefa crítica/prioritária

### 🎯 Fluxo de Trabalho

1. **Escolha a próxima tarefa** da fase atual
2. **Marque como em progresso** [🔄]
3. **Execute a tarefa** seguindo os passos detalhados
4. **Rode os testes** relacionados
5. **Verifique o DoD** (Definition of Done)
6. **Marque como completa** [✅]
7. **Commit** as mudanças

### ⏱️ Estimativas

- **XS**: < 30 minutos
- **S**: 30min - 1h
- **M**: 1h - 2h
- **L**: 2h - 4h
- **XL**: 4h - 8h

---

## 2. Status das Tarefas

### 📊 Progresso Geral

```
FASE 0: [████████░░] 0/10 tarefas (0%)
FASE 1: [░░░░░░░░░░] 0/12 tarefas (0%)
FASE 2: [░░░░░░░░░░] 0/8 tarefas (0%)
FASE 3: [░░░░░░░░░░] 0/12 tarefas (0%)
FASE 4: [░░░░░░░░░░] 0/15 tarefas (0%)
FASE 5: [░░░░░░░░░░] 0/6 tarefas (0%)
FASE 6: [░░░░░░░░░░] 0/5 tarefas (0%)
FASE 7: [░░░░░░░░░░] 0/8 tarefas (0%)

TOTAL: 0/76 tarefas completas (0%)
```

---

## FASE 0: Setup e Fundação

**Meta**: Preparar ambiente e estrutura base  
**Duração Estimada**: 3 dias  
**Prioridade**: 🔥 Crítica

---

### ✅ T0.1 - Verificar Ambiente Flutter

**Estimativa**: XS (15min)  
**Dependências**: Nenhuma  
**Prioridade**: 🔥 Crítica

**Descrição**: Garantir que o ambiente Flutter está configurado corretamente

**Passos**:
1. Abrir terminal
2. Executar `flutter doctor -v`
3. Verificar se todos os checks estão ✓
4. Se houver problemas, resolver antes de continuar

**Comandos**:
```bash
flutter doctor -v
flutter --version
```

**DoD**:
- [ ] `flutter doctor` sem erros críticos
- [ ] Flutter SDK versão ≥ 3.24.0
- [ ] Android SDK configurado (se for desenvolver Android)
- [ ] Xcode configurado (se for desenvolver iOS - macOS only)

**Status**: [ ]

---

### ✅ T0.2 - Configurar Git

**Estimativa**: XS (15min)  
**Dependências**: T0.1  
**Prioridade**: 🔥 Crítica

**Descrição**: Inicializar repositório Git e configurar .gitignore

**Passos**:
1. Navegar até pasta do projeto: `cd flutter_widgets`
2. Inicializar Git: `git init`
3. Verificar se `.gitignore` existe (Flutter cria automaticamente)
4. Adicionar items extras ao `.gitignore` se necessário
5. Fazer commit inicial

**Comandos**:
```bash
cd flutter_widgets
git init
git add .
git commit -m "feat: initial commit - project structure"
```

**Adicionar ao .gitignore** (se ainda não estiver):
```
# Coverage
coverage/
*.lcov

# Build
build/

# IDE
.idea/
.vscode/
*.iml
```

**DoD**:
- [ ] Git inicializado
- [ ] `.gitignore` configurado
- [ ] Commit inicial feito

**Status**: [ ]

---

### ✅ T0.3 - Criar Estrutura de Pastas

**Estimativa**: S (30min)  
**Dependências**: T0.2  
**Prioridade**: 🔥 Crítica

**Descrição**: Criar toda a estrutura de diretórios do projeto

**Passos**:
1. Criar pastas no diretório `lib/`
2. Criar pastas no diretório `test/`
3. Adicionar `.gitkeep` em pastas vazias (opcional)

**Comandos**:
```bash
# No terminal, dentro de flutter_widgets/

# Criar estrutura lib/
mkdir -p lib/core/{constants,themes,utils,di}
mkdir -p lib/data/{models,repositories,datasources}
mkdir -p lib/domain/{entities,repositories,usecases}
mkdir -p lib/presentation/{views,viewmodels,widgets}

# Criar estrutura test/
mkdir -p test/unit/{data/{models,repositories,datasources},domain/{entities,usecases},presentation/viewmodels}
mkdir -p test/integration/{flows,widgets,views,repositories}
mkdir -p test/e2e

# Adicionar .gitkeep para manter pastas no Git
find lib test -type d -empty -exec touch {}/.gitkeep \;
```

**Estrutura Final**:
```
lib/
├── core/
│   ├── constants/
│   ├── themes/
│   ├── utils/
│   └── di/
├── data/
│   ├── models/
│   ├── repositories/
│   └── datasources/
├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/
├── presentation/
│   ├── views/
│   ├── viewmodels/
│   └── widgets/
└── main.dart

test/
├── unit/
│   ├── data/
│   ├── domain/
│   └── presentation/
├── integration/
└── e2e/
```

**DoD**:
- [ ] Todas as pastas criadas
- [ ] Estrutura verificada com `tree` ou `ls -R`
- [ ] Commit feito: `git commit -m "feat: create folder structure"`

**Status**: [ ]

---

### ✅ T0.4 - Adicionar Dependências ao pubspec.yaml

**Estimativa**: M (1h)  
**Dependências**: T0.3  
**Prioridade**: 🔥 Crítica

**Descrição**: Configurar todas as dependências necessárias do projeto

**Passos**:
1. Abrir `pubspec.yaml`
2. Adicionar dependências conforme abaixo
3. Executar `flutter pub get`
4. Verificar se não há conflitos

**Arquivo `pubspec.yaml`**:
```yaml
name: flutter_widgets
description: Educational Flutter app showcasing widgets with MVVM architecture
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: '>=3.5.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter

  # State Management
  provider: ^6.1.1

  # Dependency Injection
  get_it: ^7.6.4
  injectable: ^2.3.2

  # Code Generation
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1

  # Local Storage
  shared_preferences: ^2.2.2

  # Utilities
  logger: ^2.0.2
  equatable: ^2.0.5

  # UI
  flutter_syntax_view: ^4.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter

  # Linting
  flutter_lints: ^3.0.1
  very_good_analysis: ^5.1.0

  # Testing
  mockito: ^5.4.4
  build_runner: ^2.4.7
  integration_test:
    sdk: flutter

  # Code Generation
  freezed: ^2.4.6
  json_serializable: ^6.7.1
  injectable_generator: ^2.4.1

flutter:
  uses-material-design: true
```

**Comandos**:
```bash
flutter pub get
flutter pub upgrade
```

**DoD**:
- [ ] `pubspec.yaml` atualizado
- [ ] `flutter pub get` executado sem erros
- [ ] Arquivo `pubspec.lock` criado
- [ ] Commit: `git commit -m "feat: add project dependencies"`

**Status**: [ ]

---

### ✅ T0.5 - Configurar Linting (analysis_options.yaml)

**Estimativa**: S (30min)  
**Dependências**: T0.4  
**Prioridade**: Alta

**Descrição**: Configurar regras de linting para qualidade de código

**Passos**:
1. Criar arquivo `analysis_options.yaml` na raiz do projeto
2. Adicionar configuração conforme abaixo
3. Executar `flutter analyze` para testar
4. Ajustar regras se necessário

**Arquivo `analysis_options.yaml`**:
```yaml
include: package:very_good_analysis/analysis_options.yaml

linter:
  rules:
    # Desabilitar regras muito restritivas para estudo
    public_member_api_docs: false
    lines_longer_than_80_chars: false
    
    # Manter boas práticas essenciais
    prefer_const_constructors: true
    prefer_const_literals_to_create_immutables: true
    avoid_print: true
    avoid_unnecessary_containers: true
    sized_box_for_whitespace: true

analyzer:
  exclude:
    - "**/*.g.dart"
    - "**/*.freezed.dart"
  errors:
    invalid_annotation_target: ignore

  language:
    strict-casts: true
    strict-raw-types: true
```

**Comandos**:
```bash
flutter analyze
```

**DoD**:
- [ ] `analysis_options.yaml` criado
- [ ] `flutter analyze` executa sem erros
- [ ] Commit: `git commit -m "feat: configure linting rules"`

**Status**: [ ]

---

### ✅ T0.6 - Configurar Dependency Injection (GetIt + Injectable)

**Estimativa**: M (1.5h)  
**Dependências**: T0.5  
**Prioridade**: 🔥 Crítica

**Descrição**: Configurar sistema de injeção de dependências

**Passos**:
1. Criar arquivo `lib/core/di/injection.dart`
2. Criar arquivo `lib/core/di/injection.config.dart` (será gerado)
3. Configurar GetIt
4. Rodar code generation

**Arquivo `lib/core/di/injection.dart`**:
```dart
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.init();
```

**Arquivo `lib/core/di/injection.config.dart`**:
```dart
// Este arquivo será gerado pelo build_runner
// Não editar manualmente
```

**Comandos**:
```bash
# Rodar code generation
flutter pub run build_runner build --delete-conflicting-outputs

# Ou em watch mode (recomendado durante desenvolvimento)
flutter pub run build_runner watch --delete-conflicting-outputs
```

**DoD**:
- [ ] Arquivos DI criados
- [ ] Build runner executado sem erros
- [ ] `injection.config.dart` gerado
- [ ] Commit: `git commit -m "feat: setup dependency injection"`

**Status**: [ ]

---

### ✅ T0.7 - Criar Tema do App

**Estimativa**: M (1h)  
**Dependências**: T0.6  
**Prioridade**: Média

**Descrição**: Definir tema visual do aplicativo (Material 3)

**Passos**:
1. Criar `lib/core/themes/app_theme.dart`
2. Criar `lib/core/constants/app_colors.dart`
3. Definir ThemeData para light e dark mode

**Arquivo `lib/core/constants/app_colors.dart`**:
```dart
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Colors
  static const Color primary = Color(0xFF6750A4);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color primaryContainer = Color(0xFFEADDFF);
  static const Color onPrimaryContainer = Color(0xFF21005D);

  // Secondary Colors
  static const Color secondary = Color(0xFF625B71);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color secondaryContainer = Color(0xFFE8DEF8);
  static const Color onSecondaryContainer = Color(0xFF1D192B);

  // Background
  static const Color background = Color(0xFFFFFBFE);
  static const Color onBackground = Color(0xFF1C1B1F);

  // Surface
  static const Color surface = Color(0xFFFFFBFE);
  static const Color onSurface = Color(0xFF1C1B1F);

  // Error
  static const Color error = Color(0xFFB3261E);
  static const Color onError = Color(0xFFFFFFFF);

  // Favorites
  static const Color favorite = Color(0xFFE91E63);
}
```

**Arquivo `lib/core/themes/app_theme.dart`**:
```dart
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        primaryContainer: AppColors.primaryContainer,
        onPrimaryContainer: AppColors.onPrimaryContainer,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        secondaryContainer: AppColors.secondaryContainer,
        onSecondaryContainer: AppColors.onSecondaryContainer,
        background: AppColors.background,
        onBackground: AppColors.onBackground,
        surface: AppColors.surface,
        onSurface: AppColors.onSurface,
        error: AppColors.error,
        onError: AppColors.onError,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      ),
      cardTheme: CardTheme(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryContainer,
        onPrimary: AppColors.onPrimaryContainer,
        primaryContainer: AppColors.primary,
        onPrimaryContainer: AppColors.primaryContainer,
        secondary: AppColors.secondaryContainer,
        onSecondary: AppColors.onSecondaryContainer,
        secondaryContainer: AppColors.secondary,
        onSecondaryContainer: AppColors.secondaryContainer,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
```

**DoD**:
- [ ] Arquivos de tema criados
- [ ] Cores definidas (Material 3)
- [ ] Light e Dark theme configurados
- [ ] Commit: `git commit -m "feat: create app theme"`

**Status**: [ ]

---

### ✅ T0.8 - Criar Constantes do App

**Estimativa**: S (30min)  
**Dependências**: T0.7  
**Prioridade**: Baixa

**Descrição**: Definir strings e tamanhos constantes

**Passos**:
1. Criar `lib/core/constants/app_strings.dart`
2. Criar `lib/core/constants/app_sizes.dart`

**Arquivo `lib/core/constants/app_strings.dart`**:
```dart
class AppStrings {
  AppStrings._();

  // App
  static const String appName = 'Flutter Widgets';

  // Home
  static const String homeTitle = 'Categorias';
  static const String searchHint = 'Buscar widgets...';

  // Categories
  static const String categoryLayout = 'Layout';
  static const String categoryMaterial = 'Material Design';
  static const String categoryCupertino = 'Cupertino';
  static const String categoryInput = 'Input';
  static const String categoryAnimation = 'Animation';
  static const String categoryScrolling = 'Scrolling';

  // Widget Detail
  static const String tabPreview = 'Preview';
  static const String tabCode = 'Código';
  static const String tabProperties = 'Propriedades';

  // Favorites
  static const String favorites = 'Favoritos';
  static const String noFavorites = 'Nenhum favorito ainda';
  static const String addedToFavorites = 'Adicionado aos favoritos';
  static const String removedFromFavorites = 'Removido dos favoritos';

  // Search
  static const String searchTitle = 'Buscar';
  static const String noResults = 'Nenhum widget encontrado';
  static const String typeToSearch = 'Digite para buscar';

  // Actions
  static const String copyCode = 'Copiar Código';
  static const String codeCopied = 'Código copiado!';

  // Errors
  static const String errorGeneric = 'Ocorreu um erro';
  static const String errorLoadingCategories = 'Erro ao carregar categorias';
  static const String errorLoadingWidgets = 'Erro ao carregar widgets';
}
```

**Arquivo `lib/core/constants/app_sizes.dart`**:
```dart
class AppSizes {
  AppSizes._();

  // Padding
  static const double paddingXS = 4.0;
  static const double paddingS = 8.0;
  static const double paddingM = 16.0;
  static const double paddingL = 24.0;
  static const double paddingXL = 32.0;

  // Border Radius
  static const double radiusS = 8.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;

  // Icon Sizes
  static const double iconS = 20.0;
  static const double iconM = 24.0;
  static const double iconL = 32.0;

  // Grid
  static const double gridSpacing = 16.0;
  static const int gridCrossAxisCount = 2;
  static const double gridChildAspectRatio = 1.2;

  // App Bar
  static const double appBarHeight = 56.0;
}
```

**DoD**:
- [ ] Constantes criadas
- [ ] Strings organizadas por contexto
- [ ] Commit: `git commit -m "feat: add app constants"`

**Status**: [ ]

---

### ✅ T0.9 - Atualizar main.dart

**Estimativa**: S (30min)  
**Dependências**: T0.6, T0.7  
**Prioridade**: Média

**Descrição**: Configurar arquivo main.dart com DI e tema

**Passos**:
1. Atualizar `lib/main.dart`
2. Inicializar DI
3. Configurar MaterialApp com tema

**Arquivo `lib/main.dart`**:
```dart
import 'package:flutter/material.dart';
import 'core/di/injection.dart';
import 'core/themes/app_theme.dart';
import 'core/constants/app_strings.dart';

void main() {
  // Inicializar Dependency Injection
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: Center(
          child: Text('Flutter Widgets App - Setup Complete!'),
        ),
      ),
    );
  }
}
```

**DoD**:
- [ ] `main.dart` atualizado
- [ ] DI inicializado
- [ ] App compila: `flutter run`
- [ ] Commit: `git commit -m "feat: setup main.dart with DI and theme"`

**Status**: [ ]

---

### ✅ T0.10 - Testar Setup Completo

**Estimativa**: S (30min)  
**Dependências**: T0.9  
**Prioridade**: 🔥 Crítica

**Descrição**: Validar que todo o setup está funcionando

**Passos**:
1. Rodar `flutter analyze`
2. Rodar `flutter test` (mesmo sem testes ainda)
3. Rodar `flutter run`
4. Verificar app abrindo sem erros

**Comandos**:
```bash
# Análise
flutter analyze

# Testes
flutter test

# Rodar app
flutter run

# Build runner (verificar DI)
flutter pub run build_runner build --delete-conflicting-outputs
```

**DoD**:
- [ ] `flutter analyze` → 0 issues
- [ ] `flutter test` → 0 testes (mas sem erros)
- [ ] App roda em emulador/dispositivo
- [ ] DI configurado sem erros
- [ ] Commit: `git commit -m "chore: validate setup phase complete"`

**Status**: [ ]

---

## FASE 1: Data Layer

**Meta**: Implementar camada de dados (Models, DataSources, Repositories)  
**Duração Estimada**: 3 dias  
**Prioridade**: 🔥 Crítica

---

### ✅ T1.1 - Criar Entities (Domain)

**Estimativa**: M (1.5h)  
**Dependências**: T0.10  
**Prioridade**: 🔥 Crítica

**Descrição**: Criar entidades do domínio

**Passos**:
1. Criar `lib/domain/entities/difficulty_level.dart`
2. Criar `lib/domain/entities/widget_property.dart`
3. Criar `lib/domain/entities/widget_category.dart`
4. Criar `lib/domain/entities/flutter_widget_entity.dart`

**Arquivo `lib/domain/entities/difficulty_level.dart`**:
```dart
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
```

**Arquivo `lib/domain/entities/widget_property.dart`**:
```dart
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
```

**Arquivo `lib/domain/entities/widget_category.dart`**:
```dart
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
```

**Arquivo `lib/domain/entities/flutter_widget_entity.dart`**:
```dart
import 'package:equatable/equatable.dart';
import 'difficulty_level.dart';
import 'widget_property.dart';

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
```

**DoD**:
- [ ] Todas as entities criadas
- [ ] Usando Equatable para comparação
- [ ] copyWith em FlutterWidgetEntity
- [ ] Commit: `git commit -m "feat: create domain entities"`

**Status**: [ ]

---

### ✅ T1.2 - Criar Models com Freezed

**Estimativa**: L (2h)  
**Dependências**: T1.1  
**Prioridade**: 🔥 Crítica

**Descrição**: Criar models da camada de dados usando Freezed

**Passos**:
1. Criar `lib/data/models/widget_property_model.dart`
2. Criar `lib/data/models/widget_category_model.dart`
3. Criar `lib/data/models/flutter_widget_model.dart`
4. Rodar build_runner

**Arquivo `lib/data/models/widget_property_model.dart`**:
```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/widget_property.dart';

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
```

**Arquivo `lib/data/models/widget_category_model.dart`**:
```dart
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/widget_category.dart';

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
```

**Arquivo `lib/data/models/flutter_widget_model.dart`**:
```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/difficulty_level.dart';
import '../../domain/entities/flutter_widget_entity.dart';
import 'widget_property_model.dart';

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
```

**Comandos**:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

**DoD**:
- [ ] Todos os models criados
- [ ] Build runner executado sem erros
- [ ] Arquivos `.freezed.dart` e `.g.dart` gerados
- [ ] Métodos `toEntity()` e `fromEntity()` implementados
- [ ] Commit: `git commit -m "feat: create data models with Freezed"`

**Status**: [ ]

---

### ✅ T1.3 - Escrever Testes para Models

**Estimativa**: M (1.5h)  
**Dependências**: T1.2  
**Prioridade**: Alta

**Descrição**: Testar serialização e conversão de models

**Passos**:
1. Criar `test/unit/data/models/widget_property_model_test.dart`
2. Criar `test/unit/data/models/widget_category_model_test.dart`
3. Criar `test/unit/data/models/flutter_widget_model_test.dart`
4. Rodar testes

**Exemplo `test/unit/data/models/widget_property_model_test.dart`**:
```dart
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
```

**Repetir padrão similar para outros models**

**Comandos**:
```bash
flutter test test/unit/data/models/
```

**DoD**:
- [ ] Testes de serialização JSON
- [ ] Testes de conversão Entity ↔ Model
- [ ] Todos os testes passando
- [ ] Commit: `git commit -m "test: add unit tests for models"`

**Status**: [ ]

---

### ✅ T1.4 - Criar Mock Data

**Estimativa**: L (3h)  
**Dependências**: T1.2  
**Prioridade**: 🔥 Crítica

**Descrição**: Criar dados mockados com 30+ widgets

**Passos**:
1. Criar `lib/data/datasources/mock_data.dart`
2. Adicionar 6 categorias
3. Adicionar 30+ widgets distribuídos
4. Testar que JSON funciona

**Arquivo `lib/data/datasources/mock_data.dart`** (exemplo parcial):
```dart
import '../models/flutter_widget_model.dart';
import '../models/widget_category_model.dart';
import '../models/widget_property_model.dart';

class MockData {
  MockData._();

  static List<WidgetCategoryModel> getCategories() {
    return [
      const WidgetCategoryModel(
        id: 'layout',
        name: 'Layout',
        description: 'Widgets de estrutura e posicionamento',
        iconCodePoint: 0xe8f1, // Icons.dashboard
        widgetCount: 10,
      ),
      const WidgetCategoryModel(
        id: 'material',
        name: 'Material Design',
        description: 'Widgets do Material Design',
        iconCodePoint: 0xe3e8, // Icons.widgets
        widgetCount: 8,
      ),
      const WidgetCategoryModel(
        id: 'cupertino',
        name: 'Cupertino',
        description: 'Widgets estilo iOS',
        iconCodePoint: 0xe318, // Icons.phone_iphone
        widgetCount: 5,
      ),
      const WidgetCategoryModel(
        id: 'input',
        name: 'Input',
        description: 'Widgets de entrada de dados',
        iconCodePoint: 0xe23c, // Icons.input
        widgetCount: 6,
      ),
      const WidgetCategoryModel(
        id: 'animation',
        name: 'Animation',
        description: 'Widgets animados',
        iconCodePoint: 0xe1ba, // Icons.animation
        widgetCount: 5,
      ),
      const WidgetCategoryModel(
        id: 'scrolling',
        name: 'Scrolling',
        description: 'Widgets de rolagem',
        iconCodePoint: 0xe8d5, // Icons.view_list
        widgetCount: 4,
      ),
    ];
  }

  static List<FlutterWidgetModel> getWidgets() {
    return [
      // LAYOUT WIDGETS
      FlutterWidgetModel(
        id: 'container',
        name: 'Container',
        description: 'Um widget conveniente que combina pintura, posicionamento e dimensionamento comuns.',
        categoryId: 'layout',
        codeExample: '''Container(
  padding: EdgeInsets.all(16.0),
  margin: EdgeInsets.all(8.0),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(12),
  ),
  child: Text('Hello Container!'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: const [
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'O widget filho',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'padding',
            type: 'EdgeInsetsGeometry?',
            description: 'Espaçamento interno',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'margin',
            type: 'EdgeInsetsGeometry?',
            description: 'Espaçamento externo',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'decoration',
            type: 'Decoration?',
            description: 'Decoração do container',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['layout', 'container', 'basico'],
      ),
      
      // TODO: Adicionar mais 29+ widgets aqui
      // Exemplos: Row, Column, Stack, Padding, Center, Align, Expanded,
      // ElevatedButton, TextButton, Card, AppBar, TextField, Checkbox,
      // ListView, GridView, AnimatedContainer, Hero, etc.
    ];
  }
}
```

**⚠️ IMPORTANTE**: Adicionar pelo menos 30 widgets distribuídos nas 6 categorias

**DoD**:
- [ ] 6 categorias criadas
- [ ] 30+ widgets criados
- [ ] Exemplos de código realistas
- [ ] Propriedades documentadas
- [ ] Commit: `git commit -m "feat: add mock data with 30+ widgets"`

**Status**: [ ]

---

*Continua... (T1.5 a T1.12 na próxima seção)*

---

**📊 Progresso FASE 1**: 0/12 tarefas (0%)

---

## [CONTINUAÇÃO NA PRÓXIMA RESPOSTA]

Desculpe, o arquivo está ficando muito extenso. Vou criar uma versão mais concisa ou você quer que eu continue com todas as 76 tarefas detalhadas?

**Opções:**
1. ✅ **Continuar** - Criar arquivo completo (será um arquivo MUITO grande)
2. ✅ **Resumido** - Criar versão com tarefas principais apenas
3. ✅ **Por Fase** - Criar arquivos separados para cada fase

**Qual você prefere?** 🚀