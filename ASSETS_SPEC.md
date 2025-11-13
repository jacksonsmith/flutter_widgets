# 🎨 Assets e Identidade Visual - Flutter Widgets

## 📱 Ícone do App

### Conceito
- **Nome**: Flutter Widgets
- **Estilo**: Moderno, minimalista, profissional
- **Cores principais**:
  - Azul Flutter (#02569B)
  - Azul claro (#0175C2)
  - Branco (#FFFFFF)
- **Conceito visual**: Logo do Flutter estilizado com elementos que remetem a widgets (blocos, grades)

### Especificações Técnicas

#### iOS (App Store)
- **1024x1024px** (App Store)
  - Formato: PNG sem transparência
  - Sem cantos arredondados (iOS adiciona automaticamente)
  - Espaço de cor: sRGB

Tamanhos necessários:
- 20x20pt (1x, 2x, 3x)
- 29x29pt (1x, 2x, 3x)
- 40x40pt (1x, 2x, 3x)
- 60x60pt (2x, 3x)
- 76x76pt (1x, 2x)
- 83.5x83.5pt (2x)

#### Android (Google Play)
- **512x512px** (Google Play Store)
  - Formato: PNG com transparência
  - 32-bit com alpha channel

Adaptive Icon (Android 8.0+):
- Foreground: 108x108dp (área segura: 66x66dp central)
- Background: 108x108dp (cor sólida ou gradiente)

### Design Sugerido
```
┌─────────────────┐
│   ╔═══╗ ╔═══╗  │
│   ║ F ║ ║ W ║  │
│   ╚═══╝ ╚═══╝  │
│   ╔═══╗ ╔═══╗  │
│   ║   ║ ║   ║  │
│   ╚═══╝ ╚═══╝  │
└─────────────────┘
```
- Fundo: Gradiente azul Flutter
- "F" e "W" estilizados como widgets
- Grade 2x2 de blocos representando widgets

---

## 🌅 Splash Screen

### Especificações
- **Fundo**: Branco (#FFFFFF) ou gradiente azul suave
- **Logo centralizado**: Ícone do app (192x192dp)
- **Texto opcional**: "Flutter Widgets" (fonte Roboto, 24sp)
- **Tempo**: 1-2 segundos máximo

### Arquivos Necessários

#### Android (res/drawable/)
- splash_background.xml
- ic_launcher.png (vários tamanhos)

#### iOS (Assets.xcassets/)
- LaunchScreen.storyboard
- LaunchImage (vários tamanhos)

---

## 📸 Screenshots para Stores

### Quantidade
- **Mínimo**: 2 screenshots
- **Recomendado**: 5-8 screenshots
- **Máximo**: 8 screenshots

### Dispositivos Alvo

#### iOS (obrigatórios)
1. **6.5" Display** (iPhone 14 Pro Max, 13 Pro Max, etc.)
   - 1284 x 2778 pixels

2. **5.5" Display** (iPhone 8 Plus, 7 Plus, etc.)
   - 1242 x 2208 pixels

#### Android (recomendados)
- **Telefone**: 1080 x 1920 pixels (mínimo)
- **Tablet 7"**: 1200 x 1920 pixels
- **Tablet 10"**: 1920 x 1200 pixels

### Conteúdo dos Screenshots

#### Screenshot 1: Tela Principal (Home)
**Título**: "100 Widgets Flutter Organizados"
- Lista de categorias
- Contador de widgets
- Interface limpa e moderna

#### Screenshot 2: Categoria de Widgets
**Título**: "Explore por Categoria"
- Grid de widgets Material Design
- Cards com preview visual
- Fácil navegação

#### Screenshot 3: Detalhes do Widget
**Título**: "Visualização Interativa"
- Preview ao vivo do widget
- Código de exemplo
- Propriedades documentadas

#### Screenshot 4: Código de Exemplo
**Título**: "Copie e Cole o Código"
- Código completo formatado
- Syntax highlighting
- Botão de copiar

#### Screenshot 5: Busca
**Título**: "Busca Rápida e Eficiente"
- Campo de busca
- Resultados filtrados
- Sugestões inteligentes

#### Screenshot 6: Favoritos
**Título**: "Salve Seus Favoritos"
- Lista de widgets favoritos
- Acesso rápido
- Sincronização local

#### Screenshot 7: Dark Mode
**Título**: "Tema Claro e Escuro"
- Interface em dark mode
- Contraste perfeito
- Mesma funcionalidade

#### Screenshot 8: Suporte Multiplataforma
**Título**: "Material + Cupertino"
- Widgets iOS e Android
- Design consistente
- Multiplataforma

---

## 🎨 Paleta de Cores

### Cores Principais
```
Primary Blue:     #02569B (Flutter Blue)
Light Blue:       #0175C2
Accent Blue:      #13B9FD
Dark Blue:        #012A4A

Background Light: #FFFFFF
Background Dark:  #121212
Surface Light:    #F5F5F5
Surface Dark:     #1E1E1E

Text Primary:     #000000 / #FFFFFF
Text Secondary:   #666666 / #AAAAAA
```

### Uso das Cores
- **Primary**: AppBar, botões principais, links
- **Accent**: FAB, highlights, badges
- **Background**: Fundo das telas
- **Surface**: Cards, dialogs, bottom sheets

---

## 📐 Tipografia

### Fontes
- **Primary**: Roboto (Android) / San Francisco (iOS)
- **Monospace (código)**: Fira Code / JetBrains Mono

### Tamanhos
```
Hero Title:      32sp / Bold
Title:           24sp / Medium
Subtitle:        20sp / Regular
Body:            16sp / Regular
Caption:         14sp / Regular
Code:            14sp / Monospace
```

---

## 🎬 Vídeo Promocional (Opcional)

### Especificações
- **Duração**: 15-30 segundos
- **Resolução**: 1080p (1920x1080)
- **Formato**: MP4 (H.264)
- **Tamanho máximo**: 50MB

### Roteiro Sugerido
1. **0-5s**: Logo + "Flutter Widgets"
2. **5-10s**: Navegar pelas categorias
3. **10-15s**: Ver detalhes de um widget
4. **15-20s**: Copiar código
5. **20-25s**: Mostrar dark mode
6. **25-30s**: Logo + "Disponível agora"

---

## 📦 Banner para Google Play (Feature Graphic)

### Especificações
- **Tamanho**: 1024 x 500 pixels
- **Formato**: PNG ou JPG
- **Uso**: Destaque na Play Store

### Design Sugerido
- Fundo: Gradiente azul Flutter
- Logo centralizado à esquerda
- Texto: "100 Widgets Flutter" (grande, bold)
- Subtexto: "Aprenda, Explore e Implemente"
- Mockup de tela do app à direita

---

## ✅ Checklist de Assets

### Obrigatórios
- [ ] Ícone 1024x1024 (iOS)
- [ ] Ícone 512x512 (Android)
- [ ] Adaptive Icon (foreground + background)
- [ ] 2 screenshots (mínimo) - iOS 6.5"
- [ ] 2 screenshots (mínimo) - iOS 5.5"
- [ ] 2 screenshots (mínimo) - Android
- [ ] Feature Graphic 1024x500 (Play Store)

### Recomendados
- [ ] 5-8 screenshots variados (ambas plataformas)
- [ ] Screenshot dark mode
- [ ] Splash screen customizado
- [ ] Vídeo promocional curto
- [ ] Banner para redes sociais (1200x630)

### Opcional
- [ ] Tablet screenshots
- [ ] App preview video (iOS)
- [ ] Promo video (Play Store)
- [ ] Press kit completo

---

## 🛠️ Ferramentas Recomendadas

### Design
- **Figma**: Design de ícones e assets
- **Adobe XD**: Protótipos e mockups
- **Canva**: Banners e gráficos rápidos

### Screenshots
- **Screenshot Studio**: Adicionar molduras e textos
- **Fastlane Frameit**: Automatizar molduras
- **Previewed**: Mockups profissionais

### Geração de Ícones
- **flutter_launcher_icons**: Plugin Flutter
  ```yaml
  dev_dependencies:
    flutter_launcher_icons: ^0.13.1

  flutter_launcher_icons:
    android: true
    ios: true
    image_path: "assets/icon/icon.png"
    adaptive_icon_background: "#02569B"
    adaptive_icon_foreground: "assets/icon/foreground.png"
  ```

### Splash Screen
- **flutter_native_splash**: Plugin Flutter
  ```yaml
  dev_dependencies:
    flutter_native_splash: ^2.3.0

  flutter_native_splash:
    color: "#FFFFFF"
    image: assets/splash/splash.png
    android_12:
      image: assets/splash/splash.png
      color: "#FFFFFF"
  ```

---

## 📝 Notas Importantes

1. **Consistência**: Manter identidade visual em todos os assets
2. **Qualidade**: Sempre usar resolução máxima
3. **Testes**: Verificar em diferentes dispositivos
4. **Acessibilidade**: Garantir contraste adequado
5. **Branding**: Reforçar associação com Flutter

## 🔗 Referências

- [Material Design Guidelines](https://material.io/design)
- [iOS Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)
- [Google Play Asset Guidelines](https://support.google.com/googleplay/android-developer/answer/9866151)
- [App Store Asset Guidelines](https://developer.apple.com/app-store/product-page/)
