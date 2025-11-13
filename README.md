# 🚀 Flutter Widgets

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.35.7-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.9.2-0175C2?logo=dart)
![License](https://img.shields.io/badge/License-MIT-green)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-lightgrey)
![Coverage](https://img.shields.io/badge/Coverage-80%25-brightgreen)

**Sua biblioteca completa de 100 widgets Flutter com exemplos de código interativos**

[🎯 Features](#-features) •
[📦 Instalação](#-instalação) •
[🏗️ Arquitetura](#%EF%B8%8F-arquitetura) •
[📱 Screenshots](#-screenshots) •
[🤝 Contribuindo](#-contribuindo)

</div>

---

## 📖 Sobre

**Flutter Widgets** é um aplicativo móvel educacional que oferece uma biblioteca completa de 100 widgets do Flutter framework, organizados em 10 categorias, com:

- 👁️ **Preview Interativo**: Visualize cada widget funcionando ao vivo
- 💻 **Código Pronto**: Copie e cole exemplos completos
- 📚 **Documentação Detalhada**: Todas as propriedades explicadas
- 🔍 **Busca Inteligente**: Encontre widgets rapidamente
- ⭐ **Favoritos**: Salve seus widgets preferidos
- 🎨 **Dark Mode**: Tema claro e escuro
- 📴 **100% Offline**: Funciona sem internet

## ✨ Features

### 🎯 Principais Funcionalidades

- ✅ **100 Widgets Completos** organizados em 10 categorias
- ✅ **Preview ao Vivo** de todos os widgets
- ✅ **Exemplos de Código** prontos para usar
- ✅ **Documentação Completa** de propriedades
- ✅ **Copy to Clipboard** com um toque
- ✅ **Sistema de Favoritos** persistente
- ✅ **Busca em Tempo Real** por nome, categoria e tags
- ✅ **Dark Mode** automático
- ✅ **Zero Permissões** desnecessárias
- ✅ **Privacidade Total** - sem coleta de dados

### 📚 Categorias

| Categoria | Widgets | Exemplos |
|-----------|---------|----------|
| 🏗️ **Layout** | 15 | Container, Row, Column, Stack, Expanded, Center, Padding... |
| 🎨 **Material Design** | 21 | ElevatedButton, Card, Scaffold, AppBar, Dialog, Chip... |
| 🍎 **Cupertino** | 8 | CupertinoButton, CupertinoSwitch, CupertinoPicker... |
| ⌨️ **Input** | 9 | TextField, Checkbox, Switch, Radio, Slider, Form... |
| 🎬 **Animation** | 8 | AnimatedContainer, Hero, ScaleTransition... |
| 📜 **Scrolling** | 7 | ListView, GridView, PageView, CustomScrollView, Slivers... |
| ✏️ **Text & Fonts** | 10 | Text, RichText, SelectableText, AnimatedDefaultTextStyle... |
| 🖼️ **Images & Icons** | 8 | Image, Icon, CircleAvatar, ClipRRect... |
| 👆 **Gestures** | 8 | GestureDetector, InkWell, Draggable, Dismissible... |
| 🧭 **Navigation** | 6 | PopupMenuButton, NavigationRail, BackButton... |
| **TOTAL** | **100** | **Todos com código e preview!** |

## 📦 Instalação

### Pré-requisitos

- Flutter SDK 3.35.7 ou superior
- Dart 3.9.2 ou superior
- Android Studio / VS Code
- Dispositivo físico ou emulador

### Clone o Repositório

```bash
git clone https://github.com/[SEU_USER]/flutter_widgets.git
cd flutter_widgets
```

### Instale as Dependências

```bash
flutter pub get
```

### Execute o App

```bash
# Android
flutter run

# iOS
flutter run

# Modo release
flutter run --release
```

### Execute os Testes

```bash
# Todos os testes
flutter test

# Com cobertura
flutter test --coverage

# Análise estática
flutter analyze
```

## 🏗️ Arquitetura

O projeto segue **Clean Architecture** com **MVVM** pattern:

```
lib/
├── core/                      # Núcleo do app
│   ├── constants/            # Strings, cores, constantes
│   ├── di/                   # Dependency Injection (GetIt)
│   └── theme/                # Temas light/dark
│
├── data/                      # Camada de Dados
│   ├── datasources/          # Fontes de dados
│   │   ├── local/           # SharedPreferences
│   │   └── mock_data.dart   # 100 widgets mockados
│   ├── models/              # Modelos de dados (Freezed)
│   └── repositories/        # Implementação de repositórios
│
├── domain/                    # Camada de Domínio
│   ├── entities/            # Entidades de negócio
│   ├── repositories/        # Interfaces de repositórios
│   └── usecases/            # Casos de uso
│
└── presentation/             # Camada de Apresentação
    ├── pages/               # Telas do app
    │   ├── home/           # Tela principal
    │   ├── category/       # Lista de widgets por categoria
    │   ├── detail/         # Detalhes do widget
    │   ├── favorites/      # Widgets favoritos
    │   └── search/         # Busca de widgets
    ├── providers/          # State management (Provider)
    └── widgets/            # Widgets reutilizáveis
        └── widget_preview.dart  # 100 previews!

test/                         # Testes
├── unit/                    # Testes unitários
├── widget_test.dart        # Testes de widget
└── integration/            # Testes de integração (futuro)
```

### 🔧 Tecnologias Utilizadas

#### Core
- **Flutter 3.35.7**: Framework multiplataforma
- **Dart 3.9.2**: Linguagem de programação
- **Material Design 3**: Sistema de design

#### State Management
- **Provider 6.1.2**: Gerenciamento de estado
- **ChangeNotifier**: Padrão observador

#### Dependency Injection
- **GetIt 8.0.3**: Service locator
- **Injectable 3.0.0**: Geração de código DI

#### Data Models
- **Freezed 2.6.2**: Geração de modelos imutáveis
- **Json Serializable 6.9.2**: Serialização JSON

#### Storage
- **SharedPreferences 2.3.5**: Armazenamento local

#### Code Quality
- **Very Good Analysis 6.0.0**: Regras de linting
- **Mockito 5.4.5**: Mocks para testes
- **Build Runner 2.4.15**: Geração de código

## 📱 Screenshots

<div align="center">

### Light Mode
<img src="screenshots/home_light.png" width="200" /> <img src="screenshots/category_light.png" width="200" /> <img src="screenshots/detail_light.png" width="200" /> <img src="screenshots/code_light.png" width="200" />

### Dark Mode
<img src="screenshots/home_dark.png" width="200" /> <img src="screenshots/category_dark.png" width="200" /> <img src="screenshots/detail_dark.png" width="200" /> <img src="screenshots/code_dark.png" width="200" />

</div>

## 🎯 Roadmap

### ✅ v1.0.0 (Atual)
- [x] 100 widgets implementados
- [x] 10 categorias organizadas
- [x] Preview interativo
- [x] Sistema de favoritos
- [x] Busca inteligente
- [x] Dark mode
- [x] Copy to clipboard
- [x] 23 testes automatizados

### 🔜 v1.1.0 (Próximo)
- [ ] 50 widgets adicionais (total 150)
- [ ] Filtros avançados
- [ ] Comparação entre widgets
- [ ] Tags personalizadas
- [ ] Histórico de visualização expandido

### 🚀 v2.0.0 (Futuro)
- [ ] Widget Playground interativo
- [ ] Edição de propriedades ao vivo
- [ ] Export de código customizado
- [ ] Tutoriais passo a passo
- [ ] Temas customizados
- [ ] Snippets VS Code
- [ ] Sincronização na nuvem (opcional)

### 🌟 v3.0.0 (Visão)
- [ ] Widgets da comunidade
- [ ] Sistema de rating
- [ ] Comentários e discussões
- [ ] Desafios de código
- [ ] Certificações
- [ ] API pública

## 🧪 Testes

### Cobertura de Testes

```
Total Tests: 23/23 ✅
Coverage: ~80%

- Unit Tests: 22 ✅
- Widget Tests: 1 ✅
- Integration Tests: 0 (planejado)
```

### Executar Testes

```bash
# Todos os testes
flutter test

# Testes específicos
flutter test test/unit/data/repositories/

# Com cobertura
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

## 📊 Performance

- ⚡ **Startup time**: < 2s
- 🎯 **FPS**: 60 constante
- 💾 **App size**: ~15MB (release)
- 🔋 **Battery**: Consumo mínimo
- 📶 **Offline**: 100% funcional

## 🔒 Privacidade & Segurança

### Política de Privacidade

✅ **Zero coleta de dados pessoais**
✅ **100% offline**
✅ **Sem analytics ou tracking**
✅ **Sem SDKs de terceiros**
✅ **Sem permissões desnecessárias**

Leia: [PRIVACY_POLICY.md](PRIVACY_POLICY.md)

### Termos de Uso

Leia: [TERMS_OF_SERVICE.md](TERMS_OF_SERVICE.md)

## 🤝 Contribuindo

Contribuições são bem-vindas! 🎉

### Como Contribuir

1. **Fork** o repositório
2. **Clone** seu fork
   ```bash
   git clone https://github.com/SEU_USER/flutter_widgets.git
   ```
3. **Crie** uma branch
   ```bash
   git checkout -b feature/minha-feature
   ```
4. **Commit** suas mudanças
   ```bash
   git commit -m "feat: adiciona nova feature"
   ```
5. **Push** para o GitHub
   ```bash
   git push origin feature/minha-feature
   ```
6. **Abra** um Pull Request

### Convenções de Commit

Usamos [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: nova funcionalidade
fix: correção de bug
docs: documentação
style: formatação
refactor: refatoração
test: testes
chore: tarefas gerais
```

### Código de Conduta

- ✅ Seja respeitoso e profissional
- ✅ Aceite feedback construtivo
- ✅ Foque na colaboração
- ❌ Sem assédio ou discriminação

## 📝 Licença

Este projeto está licenciado sob a **MIT License** - veja [LICENSE](LICENSE) para detalhes.

```
MIT License

Copyright (c) 2025 Flutter Widgets

Permission is hereby granted, free of charge...
```

## 👥 Autores

- **[SEU_NOME]** - *Criador & Desenvolvedor Principal*
  - GitHub: [@SEU_USER](https://github.com/SEU_USER)
  - Email: [SEU_EMAIL]
  - LinkedIn: [SEU_LINKEDIN]

## 🙏 Agradecimentos

- **Flutter Team** - Framework incrível
- **Google** - Material Design
- **Apple** - Cupertino Design
- **Comunidade Flutter** - Inspiração e suporte
- **Contributors** - Todas as contribuições

## 📞 Suporte

### Encontrou um Bug?

Abra uma [Issue](https://github.com/SEU_USER/flutter_widgets/issues) com:
- Descrição detalhada
- Passos para reproduzir
- Screenshots (se aplicável)
- Versão do Flutter/Dart
- Dispositivo/OS

### Tem uma Sugestão?

Adoramos feedback! Abra uma [Feature Request](https://github.com/SEU_USER/flutter_widgets/issues/new?template=feature_request.md)

### Precisa de Ajuda?

- 📧 Email: [SEU_EMAIL]
- 💬 Discussions: [GitHub Discussions](https://github.com/SEU_USER/flutter_widgets/discussions)
- 🐦 Twitter: [@SEU_TWITTER]

## 🌟 Star History

Se este projeto te ajudou, considere dar uma ⭐!

[![Star History Chart](https://api.star-history.com/svg?repos=SEU_USER/flutter_widgets&type=Date)](https://star-history.com/#SEU_USER/flutter_widgets&Date)

## 📈 Status do Projeto

![GitHub last commit](https://img.shields.io/github/last-commit/SEU_USER/flutter_widgets)
![GitHub issues](https://img.shields.io/github/issues/SEU_USER/flutter_widgets)
![GitHub pull requests](https://img.shields.io/github/issues-pr/SEU_USER/flutter_widgets)
![GitHub stars](https://img.shields.io/github/stars/SEU_USER/flutter_widgets?style=social)
![GitHub forks](https://img.shields.io/github/forks/SEU_USER/flutter_widgets?style=social)

---

<div align="center">

**Feito com ❤️ e Flutter**

[⬆ Voltar ao topo](#-flutter-widgets)

</div>
