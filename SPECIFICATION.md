# FLUTTER WIDGETS - Especificação Detalhada do Projeto

**Versão**: 1.0  
**Data**: 2025-11-12  
**Status**: Baseline Aprovada

---

## 📑 Índice

1. [Visão Geral](#visão-geral)
2. [Requisitos Funcionais](#requisitos-funcionais)
3. [Requisitos Não-Funcionais](#requisitos-não-funcionais)
4. [User Stories](#user-stories)
5. [Casos de Uso](#casos-de-uso)
6. [Estrutura de Dados](#estrutura-de-dados)
7. [Arquitetura MVVM](#arquitetura-mvvm)
8. [Fluxos de Navegação](#fluxos-de-navegação)
9. [Especificação de Testes](#especificação-de-testes)
10. [Dependências](#dependências)

---

## 1. Visão Geral

### 1.1 Propósito
Aplicativo educacional multiplataforma para estudo e demonstração prática de widgets Flutter, implementado com arquitetura MVVM e cobertura completa de testes.

### 1.2 Escopo
- **In Scope**: 
  - Catálogo interativo de widgets Flutter
  - Exemplos práticos com código-fonte
  - Sistema de favoritos
  - Busca e filtros
  - Suporte iOS e Android
  
- **Out of Scope**:
  - Backend/API externa
  - Autenticação de usuários
  - Compartilhamento social
  - Modo offline (v1)

### 1.3 Stakeholders
- **Desenvolvedor/Estudante**: Você (usuário principal)
- **Comunidade Flutter**: Referência de boas práticas

---

## 2. Requisitos Funcionais

### RF001 - Tela Inicial (Home)
**Prioridade**: Alta  
**Descrição**: Exibir grid/lista de categorias de widgets  

**Critérios de Aceitação**:
- [ ] Exibir pelo menos 6 categorias iniciais
- [ ] Cada categoria tem ícone, nome e contador de widgets
- [ ] Tap na categoria navega para lista de widgets
- [ ] AppBar com título e ícone de busca
- [ ] Loading state durante carregamento

**Categorias Iniciais**:
1. Layout (Container, Row, Column, Stack, Padding, etc.)
2. Material Design (Button, Card, AppBar, BottomNav, etc.)
3. Cupertino (CupertinoButton, CupertinoNavigationBar, etc.)
4. Input (TextField, Checkbox, Radio, Switch, Slider, etc.)
5. Animation (AnimatedContainer, Hero, AnimatedOpacity, etc.)
6. Scrolling (ListView, GridView, SingleChildScrollView, etc.)

---

### RF002 - Lista de Widgets por Categoria
**Prioridade**: Alta  
**Descrição**: Exibir todos os widgets de uma categoria específica

**Critérios de Aceitação**:
- [ ] AppBar mostra nome da categoria
- [ ] Lista ordenada alfabeticamente
- [ ] Cada item mostra: nome do widget, ícone/preview, descrição curta
- [ ] Ícone de favorito (outline/filled) em cada item
- [ ] Tap no item navega para detalhes
- [ ] Botão voltar funcional

---

### RF003 - Detalhes do Widget
**Prioridade**: Alta  
**Descrição**: Exibir demonstração interativa e informações do widget

**Critérios de Aceitação**:
- [ ] AppBar com nome do widget e ícone de favorito
- [ ] Seção "Preview": Widget renderizado com exemplo funcional
- [ ] Seção "Código": Código-fonte do exemplo (syntax highlight)
- [ ] Seção "Propriedades": Lista de propriedades principais
- [ ] Seção "Descrição": Explicação do uso do widget
- [ ] Botão "Copiar Código"
- [ ] Exemplos interativos (sliders, text inputs quando aplicável)

**Exemplos de Interatividade**:
- Container: Alterar cor, padding, border
- TextField: Digitar texto em tempo real
- Slider: Ajustar valor e ver mudança
- AnimatedContainer: Botão para animar

---

### RF004 - Busca Global
**Prioridade**: Média  
**Descrição**: Pesquisar widgets por nome ou categoria

**Critérios de Aceitação**:
- [ ] Ícone de busca na home abre tela de busca
- [ ] TextField com hint "Buscar widgets..."
- [ ] Busca em tempo real (debounce 300ms)
- [ ] Resultados agrupados por categoria
- [ ] Highlight do termo pesquisado
- [ ] Estado vazio: "Nenhum widget encontrado"
- [ ] Tap no resultado navega para detalhes

---

### RF005 - Sistema de Favoritos
**Prioridade**: Média  
**Descrição**: Marcar e visualizar widgets favoritos

**Critérios de Aceitação**:
- [ ] Ícone de favorito em lista e detalhes
- [ ] Toggle favorito com feedback visual
- [ ] Tab/Seção "Favoritos" na home
- [ ] Lista de favoritos persistida localmente
- [ ] Remover favorito com swipe ou toggle
- [ ] Badge com contador de favoritos

---

### RF006 - Visualização de Código
**Prioridade**: Média  
**Descrição**: Exibir e copiar código-fonte dos exemplos

**Critérios de Aceitação**:
- [ ] Syntax highlighting (Dart)
- [ ] Scroll horizontal/vertical
- [ ] Botão "Copiar" com feedback (snackbar/toast)
- [ ] Código formatado e identado
- [ ] Comentários explicativos no código

---

## 3. Requisitos Não-Funcionais

### RNF001 - Performance
- **Tempo de inicialização**: < 2 segundos em dispositivos médios
- **Hot reload**: < 1 segundo
- **Animações**: 60 FPS constante
- **Tamanho do APK**: < 20MB (release)
- **Tamanho do IPA**: < 25MB (release)
- **Consumo de memória**: < 150MB em uso normal

### RNF002 - Compatibilidade
- **iOS**: 12.0+
- **Android**: API 21+ (Android 5.0 Lollipop)
- **Flutter SDK**: 3.24.0+
- **Orientação**: Portrait e Landscape
- **Resoluções**: Suporte a diferentes densidades (mdpi, hdpi, xhdpi, xxhdpi)

### RNF003 - Qualidade de Código
- **Cobertura de testes**: ≥ 80%
- **Lint**: 0 erros, 0 warnings
- **Cyclomatic complexity**: < 10 por método
- **Linhas por arquivo**: < 300
- **Documentação**: 100% de classes públicas documentadas

### RNF004 - Usabilidade
- **Acessibilidade**: Suporte a screen readers
- **Internacionalização**: Preparado para i18n (inicialmente PT-BR)
- **Tema**: Suporte a Light/Dark mode (Material 3)
- **Feedback**: Todos os toques têm feedback visual/tátil

### RNF005 - Manutenibilidade
- **Arquitetura**: MVVM estrita
- **Dependency Injection**: 100% das dependências injetadas
- **Separação de camadas**: Clear separation (Presentation, Domain, Data)
- **Logs**: Sistema de logging estruturado para debug

### RNF006 - Testabilidade
- **Unit Tests**: 70% da cobertura (ViewModels, Models, Services)
- **Integration Tests**: 20% da cobertura (Widget tests)
- **E2E Tests**: 10% da cobertura (Fluxos críticos)
- **Mocking**: Todas as dependências mockáveis

---

## 4. User Stories

### US001 - Explorar Categorias
**Como** estudante de Flutter  
**Quero** visualizar categorias de widgets organizadas  
**Para** navegar facilmente pelos diferentes tipos de widgets

**Cenários**:
- ✅ Ver grid de categorias na home
- ✅ Identificar categoria por ícone e nome
- ✅ Ver quantidade de widgets por categoria
- ✅ Acessar lista de widgets ao tocar na categoria

---

### US002 - Estudar Widget Específico
**Como** desenvolvedor  
**Quero** ver exemplo interativo de um widget  
**Para** entender como ele funciona na prática

**Cenários**:
- ✅ Ver widget renderizado em preview
- ✅ Visualizar código-fonte do exemplo
- ✅ Interagir com propriedades (quando aplicável)
- ✅ Ler descrição e casos de uso
- ✅ Copiar código para usar no meu projeto

---

### US003 - Buscar Widget
**Como** desenvolvedor experiente  
**Quero** buscar widgets por nome  
**Para** encontrar rapidamente o que preciso

**Cenários**:
- ✅ Digitar nome do widget na busca
- ✅ Ver resultados filtrados em tempo real
- ✅ Identificar categoria do widget encontrado
- ✅ Acessar detalhes diretamente da busca

---

### US004 - Salvar Favoritos
**Como** estudante  
**Quero** marcar widgets importantes como favoritos  
**Para** revisitá-los facilmente depois

**Cenários**:
- ✅ Marcar widget como favorito na lista
- ✅ Desmarcar favorito quando não precisar mais
- ✅ Visualizar todos os favoritos em uma lista
- ✅ Favoritos persistem entre sessões do app

---

### US005 - Aprender com Código
**Como** iniciante em Flutter  
**Quero** ver código-fonte formatado e comentado  
**Para** aprender a sintaxe e melhores práticas

**Cenários**:
- ✅ Ver código com syntax highlighting
- ✅ Ler comentários explicativos no código
- ✅ Copiar código formatado
- ✅ Ver imports necessários

---

## 5. Casos de Uso

### UC001 - Navegar até Detalhes de Widget

**Ator**: Usuário  
**Pré-condições**: App aberto na home  
**Fluxo Principal**:
1. Usuário visualiza grid de categorias
2. Usuário toca em uma categoria (ex: "Layout")
3. Sistema exibe lista de widgets da categoria
4. Usuário toca em um widget (ex: "Container")
5. Sistema exibe tela de detalhes com preview e código
6. Usuário interage com o exemplo (opcional)
7. Usuário copia código (opcional)

**Fluxo Alternativo 1** (Via Busca):
3a. Usuário toca no ícone de busca
3b. Usuário digita nome do widget
3c. Sistema filtra e exibe resultados
3d. Usuário toca no resultado
3e. Continua no passo 5

**Pós-condições**: Usuário visualiza detalhes completos do widget

---

### UC002 - Gerenciar Favoritos

**Ator**: Usuário  
**Pré-condições**: Usuário na lista de widgets ou detalhes  
**Fluxo Principal**:
1. Usuário toca no ícone de favorito (outline)
2. Sistema marca como favorito (ícone fica filled)
3. Sistema salva no storage local
4. Sistema exibe feedback (snackbar: "Adicionado aos favoritos")
5. Usuário navega para aba "Favoritos" na home
6. Sistema exibe lista de widgets favoritados

**Fluxo Alternativo 1** (Remover Favorito):
2a. Usuário toca no ícone de favorito (filled)
2b. Sistema desmarca favorito (ícone fica outline)
2c. Sistema remove do storage
2d. Sistema exibe feedback (snackbar: "Removido dos favoritos")

**Pós-condições**: Estado de favorito persistido

---

### UC003 - Buscar e Filtrar

**Ator**: Usuário  
**Pré-condições**: App aberto  
**Fluxo Principal**:
1. Usuário toca no ícone de busca
2. Sistema abre tela de busca com focus no TextField
3. Usuário digita "button"
4. Sistema filtra widgets em tempo real (debounce 300ms)
5. Sistema exibe resultados agrupados por categoria:
   - Material Design: ElevatedButton, TextButton, IconButton
   - Cupertino: CupertinoButton
6. Usuário toca em "ElevatedButton"
7. Sistema navega para detalhes do widget

**Fluxo Alternativo 1** (Nenhum Resultado):
4a. Sistema não encontra widgets com o termo
4b. Sistema exibe mensagem: "Nenhum widget encontrado para 'xyz'"
4c. Sistema sugere: "Tente termos como: layout, button, text"

**Pós-condições**: Usuário encontra widget desejado

---

## 6. Estrutura de Dados

### 6.1 Entities (Domain Layer)

#### WidgetCategory
```dart
class WidgetCategory {
  final String id;
  final String name;
  final String description;
  final IconData icon;
  final int widgetCount;
  
  WidgetCategory({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.widgetCount,
  });
}
```

#### FlutterWidgetEntity
```dart
class FlutterWidgetEntity {
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
  
  FlutterWidgetEntity({
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
}
```

#### WidgetProperty
```dart
class WidgetProperty {
  final String name;
  final String type;
  final String description;
  final bool isRequired;
  final String? defaultValue;
  
  WidgetProperty({
    required this.name,
    required this.type,
    required this.description,
    required this.isRequired,
    this.defaultValue,
  });
}
```

#### DifficultyLevel (Enum)
```dart
enum DifficultyLevel {
  beginner,    // Widgets básicos
  intermediate, // Widgets moderados
  advanced,    // Widgets complexos
}
```

---

### 6.2 Models (Data Layer)

#### WidgetCategoryModel
```dart
@freezed
class WidgetCategoryModel with _$WidgetCategoryModel {
  const factory WidgetCategoryModel({
    required String id,
    required String name,
    required String description,
    required String iconCodePoint,
    required int widgetCount,
  }) = _WidgetCategoryModel;
  
  factory WidgetCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$WidgetCategoryModelFromJson(json);
      
  // Converter para Entity
  WidgetCategory toEntity() => WidgetCategory(
    id: id,
    name: name,
    description: description,
    icon: IconData(int.parse(iconCodePoint), fontFamily: 'MaterialIcons'),
    widgetCount: widgetCount,
  );
}
```

#### FlutterWidgetModel
```dart
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
  
  factory FlutterWidgetModel.fromJson(Map<String, dynamic> json) =>
      _$FlutterWidgetModelFromJson(json);
      
  // Converter para Entity
  FlutterWidgetEntity toEntity() => FlutterWidgetEntity(
    id: id,
    name: name,
    description: description,
    categoryId: categoryId,
    codeExample: codeExample,
    imports: imports,
    properties: properties.map((p) => p.toEntity()).toList(),
    difficulty: DifficultyLevel.values.firstWhere(
      (e) => e.toString() == 'DifficultyLevel.$difficulty',
    ),
    tags: tags,
    isFavorite: isFavorite,
  );
}
```

---

### 6.3 ViewModels (Presentation Layer)

#### HomeViewModel
```dart
class HomeViewModel extends ChangeNotifier {
  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetFavoriteWidgetsUseCase _getFavoriteWidgetsUseCase;
  
  HomeViewModel(this._getCategoriesUseCase, this._getFavoriteWidgetsUseCase);
  
  // State
  List<WidgetCategory> _categories = [];
  int _favoriteCount = 0;
  bool _isLoading = false;
  String? _errorMessage;
  
  // Getters
  List<WidgetCategory> get categories => _categories;
  int get favoriteCount => _favoriteCount;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get hasError => _errorMessage != null;
  
  // Methods
  Future<void> loadCategories() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    
    try {
      _categories = await _getCategoriesUseCase.execute();
      _favoriteCount = await _getFavoriteWidgetsUseCase.getCount();
    } catch (e) {
      _errorMessage = 'Erro ao carregar categorias';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
```

#### WidgetListViewModel
```dart
class WidgetListViewModel extends ChangeNotifier {
  final GetWidgetsByCategoryUseCase _getWidgetsByCategoryUseCase;
  final ToggleFavoriteUseCase _toggleFavoriteUseCase;
  
  WidgetListViewModel(
    this._getWidgetsByCategoryUseCase,
    this._toggleFavoriteUseCase,
  );
  
  // State
  List<FlutterWidgetEntity> _widgets = [];
  bool _isLoading = false;
  String? _errorMessage;
  
  // Getters
  List<FlutterWidgetEntity> get widgets => _widgets;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  
  // Methods
  Future<void> loadWidgets(String categoryId) async {
    _isLoading = true;
    notifyListeners();
    
    try {
      _widgets = await _getWidgetsByCategoryUseCase.execute(categoryId);
    } catch (e) {
      _errorMessage = 'Erro ao carregar widgets';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
  
  Future<void> toggleFavorite(String widgetId) async {
    try {
      await _toggleFavoriteUseCase.execute(widgetId);
      // Atualizar widget na lista
      final index = _widgets.indexWhere((w) => w.id == widgetId);
      if (index != -1) {
        _widgets[index] = _widgets[index].copyWith(
          isFavorite: !_widgets[index].isFavorite,
        );
        notifyListeners();
      }
    } catch (e) {
      _errorMessage = 'Erro ao atualizar favorito';
      notifyListeners();
    }
  }
}
```

#### SearchViewModel
```dart
class SearchViewModel extends ChangeNotifier {
  final SearchWidgetsUseCase _searchWidgetsUseCase;
  
  SearchViewModel(this._searchWidgetsUseCase);
  
  // State
  String _query = '';
  List<FlutterWidgetEntity> _results = [];
  bool _isSearching = false;
  
  // Getters
  String get query => _query;
  List<FlutterWidgetEntity> get results => _results;
  bool get isSearching => _isSearching;
  bool get hasResults => _results.isNotEmpty;
  bool get showEmptyState => _query.isNotEmpty && _results.isEmpty && !_isSearching;
  
  // Methods
  void updateQuery(String newQuery) {
    _query = newQuery;
    notifyListeners();
    _performSearch();
  }
  
  Future<void> _performSearch() async {
    if (_query.isEmpty) {
      _results = [];
      notifyListeners();
      return;
    }
    
    _isSearching = true;
    notifyListeners();
    
    // Debounce
    await Future.delayed(const Duration(milliseconds: 300));
    
    try {
      _results = await _searchWidgetsUseCase.execute(_query);
    } finally {
      _isSearching = false;
      notifyListeners();
    }
  }
  
  void clearSearch() {
    _query = '';
    _results = [];
    notifyListeners();
  }
}
```

---

## 7. Arquitetura MVVM

### 7.1 Diagrama de Camadas

```
┌─────────────────────────────────────────┐
│         PRESENTATION LAYER              │
│  ┌──────────┐         ┌──────────┐     │
│  │  Views   │ ◄────── │ViewModels│     │
│  │ (Widgets)│         │(Provider)│     │
│  └──────────┘         └──────────┘     │
│                            │            │
└────────────────────────────┼────────────┘
                             │
┌────────────────────────────┼────────────┐
│          DOMAIN LAYER      │            │
│                       ┌────▼─────┐      │
│                       │ Use Cases│      │
│                       └────┬─────┘      │
│                            │            │
│                       ┌────▼─────┐      │
│                       │Repositories      │
│                       │(Interfaces)│    │
│                       └──────────┘      │
└─────────────────────────────────────────┘
                             │
┌────────────────────────────┼────────────┐
│           DATA LAYER       │            │
│                       ┌────▼─────┐      │
│                       │Repository│      │
│                       │   Impl   │      │
│                       └────┬─────┘      │
│                            │            │
│      ┌─────────────────────┼─────────┐ │
│      │                     │         │ │
│ ┌────▼────┐          ┌─────▼──────┐ │ │
│ │  Local  │          │   Models   │ │ │
│ │DataSource│          │(Freezed)   │ │ │
│ └─────────┘          └────────────┘ │ │
│                                      │ │
└──────────────────────────────────────┘─┘
```

### 7.2 Fluxo de Dados

**View → ViewModel → UseCase → Repository → DataSource**

1. **View** dispara ação (ex: botão pressionado)
2. **ViewModel** recebe ação e chama **UseCase**
3. **UseCase** executa lógica de negócio e chama **Repository**
4. **Repository** busca dados do **DataSource**
5. **DataSource** retorna **Models**
6. **Repository** converte Models em **Entities**
7. **UseCase** retorna Entities para **ViewModel**
8. **ViewModel** atualiza estado e notifica **View**
9. **View** renderiza novo estado

---

## 8. Fluxos de Navegação

### 8.1 Estrutura de Rotas

```dart
// routes.dart
class AppRoutes {
  static const String home = '/';
  static const String widgetList = '/category/:categoryId';
  static const String widgetDetail = '/widget/:widgetId';
  static const String search = '/search';
  static const String favorites = '/favorites';
}
```

### 8.2 Navegação Principal

```
Home Screen
    │
    ├─► Widget List Screen (by Category)
    │       │
    │       └─► Widget Detail Screen
    │
    ├─► Search Screen
    │       └─► Widget Detail Screen
    │
    └─► Favorites Screen
            └─► Widget Detail Screen
```

### 8.3 Bottom Navigation (Opcional v2)

```
┌────────┬────────┬─────────┐
│  Home  │ Search │Favorites│
└────────┴────────┴─────────┘
```

---

## 9. Especificação de Testes

### 9.1 Unit Tests (70%)

**Alvos**:
- ✅ ViewModels (100% cobertura)
- ✅ Use Cases
- ✅ Entities
- ✅ Utilities

**Exemplo**: `home_viewmodel_test.dart`
```dart
void main() {
  late HomeViewModel viewModel;
  late MockGetCategoriesUseCase mockGetCategoriesUseCase;
  
  setUp(() {
    mockGetCategoriesUseCase = MockGetCategoriesUseCase();
    viewModel = HomeViewModel(mockGetCategoriesUseCase);
  });
  
  group('HomeViewModel', () {
    test('initial state should be correct', () {
      expect(viewModel.isLoading, false);
      expect(viewModel.categories, isEmpty);
      expect(viewModel.hasError, false);
    });
    
    test('loadCategories should update state correctly on success', () async {
      // Arrange
      final categories = [/* mock data */];
      when(mockGetCategoriesUseCase.execute())
          .thenAnswer((_) async => categories);
      
      // Act
      await viewModel.loadCategories();
      
      // Assert
      expect(viewModel.isLoading, false);
      expect(viewModel.categories, categories);
      expect(viewModel.hasError, false);
      verify(mockGetCategoriesUseCase.execute()).called(1);
    });
    
    test('loadCategories should handle errors correctly', () async {
      // Arrange
      when(mockGetCategoriesUseCase.execute())
          .thenThrow(Exception('Error'));
      
      // Act
      await viewModel.loadCategories();
      
      // Assert
      expect(viewModel.isLoading, false);
      expect(viewModel.hasError, true);
      expect(viewModel.errorMessage, isNotNull);
    });
  });
}
```

---

### 9.2 Integration Tests (20%)

**Alvos**:
- ✅ Widget Tests (interação entre View e ViewModel)
- ✅ Repository Tests (com DataSource mockado)

**Exemplo**: `home_view_test.dart`
```dart
void main() {
  testWidgets('HomeView displays categories correctly', (tester) async {
    // Arrange
    final mockViewModel = MockHomeViewModel();
    when(mockViewModel.isLoading).thenReturn(false);
    when(mockViewModel.categories).thenReturn([
      WidgetCategory(id: '1', name: 'Layout', /* ... */),
    ]);
    
    // Act
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<HomeViewModel>.value(
          value: mockViewModel,
          child: const HomeView(),
        ),
      ),
    );
    
    // Assert
    expect(find.text('Layout'), findsOneWidget);
    expect(find.byType(GridView), findsOneWidget);
  });
  
  testWidgets('HomeView shows loading indicator', (tester) async {
    // Arrange
    final mockViewModel = MockHomeViewModel();
    when(mockViewModel.isLoading).thenReturn(true);
    
    // Act
    await tester.pumpWidget(/* ... */);
    
    // Assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
```

---

### 9.3 E2E Tests (10%)

**Alvos**:
- ✅ Fluxo completo: Home → Lista → Detalhes
- ✅ Busca e navegação
- ✅ Favoritar/desfavoritar

**Exemplo**: `app_test.dart`
```dart
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  
  testWidgets('Complete user journey', (tester) async {
    // 1. Launch app
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    
    // 2. Verify home screen
    expect(find.text('Flutter Widgets'), findsOneWidget);
    expect(find.byType(GridView), findsOneWidget);
    
    // 3. Tap on Layout category
    await tester.tap(find.text('Layout'));
    await tester.pumpAndSettle();
    
    // 4. Verify widget list
    expect(find.text('Container'), findsOneWidget);
    
    // 5. Tap on Container widget
    await tester.tap(find.text('Container'));
    await tester.pumpAndSettle();
    
    // 6. Verify detail screen
    expect(find.text('Código'), findsOneWidget);
    expect(find.text('Propriedades'), findsOneWidget);
    
    // 7. Toggle favorite
    await tester.tap(find.byIcon(Icons.favorite_border));
    await tester.pumpAndSettle();
    
    // 8. Verify favorite toggled
    expect(find.byIcon(Icons.favorite), findsOneWidget);
  });
}
```

---

## 10. Dependências

### 10.1 pubspec.yaml (Principais)

```yaml
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
  flutter_syntax_view: ^4.0.0  # Syntax highlighting
  
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
```

---

## 11. Cronograma Estimado

### Sprint 1 (Setup & Fundação) - 1 semana
- ✅ Setup do projeto e dependências
- ✅ Configuração de DI
- ✅ Estrutura de pastas
- ✅ Models e Entities base

### Sprint 2 (Core Features) - 2 semanas
- ✅ Home com categorias
- ✅ Lista de widgets
- ✅ Detalhes de widget
- ✅ Testes unitários

### Sprint 3 (Features Secundárias) - 1 semana
- ✅ Sistema de busca
- ✅ Favoritos
- ✅ Testes de integração

### Sprint 4 (Polish & E2E) - 1 semana
- ✅ UI refinements
- ✅ Testes E2E
- ✅ Performance optimization
- ✅ Documentação final

**Total Estimado**: 5 semanas

---

## 12. Critérios de Sucesso

### Técnicos
- [ ] Arquitetura MVVM implementada corretamente
- [ ] ≥80% cobertura de testes
- [ ] 0 lint warnings
- [ ] App roda em iOS e Android

### Funcionais
- [ ] 6 categorias implementadas
- [ ] Pelo menos 30 widgets catalogados
- [ ] Busca funcional
- [ ] Sistema de favoritos persistente

### Educacionais
- [ ] Código serve como referência de boas práticas
- [ ] Exemplos são claros e didáticos
- [ ] Documentação completa
