FLUTTER WIDGETS - Constituição do Projeto📋 Visão Geral
Aplicativo educacional multiplataforma (iOS/Android) desenvolvido em Flutter para estudo prático e demonstração de widgets nativos, seguindo padrões enterprise e boas práticas de desenvolvimento.🎯 Objetivos Principais

Educacional: Criar referência completa de widgets Flutter com exemplos interativos
Qualidade: Implementar arquitetura robusta (MVVM) com cobertura de testes completa
Boas Práticas: Demonstrar padrões profissionais de desenvolvimento Flutter
🏗️ Princípios ArquiteturaisArquitetura

Padrão MVVM (Model-View-ViewModel) para separação de responsabilidades
Clean Architecture com camadas bem definidas
Dependency Injection para acoplamento fraco
Repository Pattern para abstração de fontes de dados
Pirâmide de Testes
        /\
       /  \  E2E (10%)
      /____\
     /      \
    / Integration \ (20%)
   /____________\
  /              \
 /   Unit Tests   \ (70%)
/__________________\Distribuição Target:

70% Unit Tests: ViewModels, Models, Services, Utilities
20% Integration Tests: Widget Tests, Repository Tests
10% E2E Tests: Fluxos críticos completos
Estrutura de Pastas
lib/
├── core/
│   ├── constants/
│   ├── themes/
│   ├── utils/
│   └── di/ (dependency injection)
├── data/
│   ├── models/
│   ├── repositories/
│   └── datasources/
├── domain/
│   ├── entities/
│   └── repositories/
├── presentation/
│   ├── views/
│   ├── viewmodels/
│   └── widgets/
└── main.dart

test/
├── unit/
├── integration/
└── e2e/🛠️ Stack TecnológicoCore

Flutter SDK: ^3.24.0 (ou mais recente estável)
Dart: ^3.5.0
State Management & MVVM

Provider ou Riverpod: Gerenciamento de estado
ChangeNotifier: Base para ViewModels
Dependency Injection

get_it: Service Locator
injectable: Code generation para DI
Testes

flutter_test: Unit & Widget tests
mockito: Mocking
integration_test: Testes de integração
patrol ou flutter_gherkin: E2E tests
Qualidade de Código

flutter_lints: Lint rules
very_good_analysis: Lint avançado
dart_code_metrics: Métricas de código
Ferramentas Adicionais

freezed: Imutabilidade e code generation
json_serializable: Serialização
logger: Logging estruturado
dio: HTTP client (se necessário)
📐 Padrões de CódigoNomenclatura

Views: *_view.dart (ex: home_view.dart)
ViewModels: *_viewmodel.dart (ex: home_viewmodel.dart)
Models: *_model.dart (ex: widget_category_model.dart)
Tests: *_test.dart
Estrutura de ViewModel
dartclass HomeViewModel extends ChangeNotifier {
  // 1. Dependencies (via constructor injection)
  // 2. Private state
  // 3. Public getters
  // 4. Public methods
  // 5. Private helper methods
}Estrutura de View
dartclass HomeView extends StatelessWidget {
  // Always stateless - state managed by ViewModel
  // Minimal business logic
  // Focus on UI composition
}✅ Critérios de QualidadeCobertura de Testes

Mínimo: 80% cobertura geral
ViewModels: 100% cobertura
Models: 100% cobertura
Views: Testes de widget para componentes complexos
Performance

Build time: < 3 segundos (debug mode)
Hot reload: < 1 segundo
App size: < 20MB (release APK/IPA)
Code Quality

Lint score: 0 erros, 0 warnings
Code metrics:

Cyclomatic complexity < 10
Max lines per file: 300
Max parameters: 5


Documentação

Todos os widgets públicos documentados
README com instruções de setup
Exemplos de uso para cada categoria de widget
🎨 Funcionalidades CoreMVP (Minimum Viable Product)

Home: Navegação por categorias de widgets
Categoria: Lista de widgets por categoria
Detalhe: Demonstração interativa + código fonte
Busca: Pesquisa de widgets por nome/categoria
Favoritos: Marcar widgets para referência rápida
Categorias de Widgets (inicial)

Layout (Container, Row, Column, Stack, etc.)
Material Design (AppBar, Button, Card, etc.)
Cupertino (iOS-style widgets)
Input (TextField, Form, etc.)
Animation (AnimatedContainer, Hero, etc.)
Scrolling (ListView, GridView, etc.)
🚀 Definição de Pronto (DoD)Uma feature está completa quando:

 Código implementado seguindo MVVM
 Unit tests escritos (ViewModel + Model)
 Integration tests escritos (se aplicável)
 E2E test para fluxo crítico (se aplicável)
 Código sem lint warnings
 Documentação atualizada
 Code review aprovado (self-review neste caso)
 Performance validada
📊 Métricas de Sucesso

✅ 100% das categorias core implementadas
✅ >80% cobertura de testes
✅ 0 bugs críticos
✅ App funcionando em iOS e Android
✅ Tempo de build < 3 segundos
Data de Criação: 2025-11-12
Versão: 1.0
Status: AprovadoSeja notificado quando Claude finalizar tarefas mais longas como esta.Ativar notificações