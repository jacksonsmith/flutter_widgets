import 'package:flutter_widgets/data/models/flutter_widget_model.dart';
import 'package:flutter_widgets/data/models/widget_category_model.dart';
import 'package:flutter_widgets/data/models/widget_property_model.dart';

class MockData {
  MockData._();

  static List<WidgetCategoryModel> getCategories() {
    return [
      const WidgetCategoryModel(
        id: 'layout',
        name: 'Layout',
        description: 'Widgets de estrutura e posicionamento',
        iconCodePoint: 0xe8f1, // Icons.dashboard
        widgetCount: 15,
      ),
      const WidgetCategoryModel(
        id: 'material',
        name: 'Material Design',
        description: 'Widgets do Material Design',
        iconCodePoint: 0xe3e8, // Icons.widgets
        widgetCount: 21,
      ),
      const WidgetCategoryModel(
        id: 'cupertino',
        name: 'Cupertino',
        description: 'Widgets estilo iOS',
        iconCodePoint: 0xe318, // Icons.phone_iphone
        widgetCount: 11,
      ),
      const WidgetCategoryModel(
        id: 'input',
        name: 'Input',
        description: 'Widgets de entrada de dados',
        iconCodePoint: 0xe23c, // Icons.input
        widgetCount: 8,
      ),
      const WidgetCategoryModel(
        id: 'animation',
        name: 'Animation',
        description: 'Widgets animados',
        iconCodePoint: 0xe1ba, // Icons.animation
        widgetCount: 11,
      ),
      const WidgetCategoryModel(
        id: 'scrolling',
        name: 'Scrolling',
        description: 'Widgets de rolagem',
        iconCodePoint: 0xe8d5, // Icons.view_list
        widgetCount: 7,
      ),
      const WidgetCategoryModel(
        id: 'text',
        name: 'Text & Fonts',
        description: 'Widgets de texto e tipografia',
        iconCodePoint: 0xe264, // Icons.text_fields
        widgetCount: 10,
      ),
      const WidgetCategoryModel(
        id: 'images',
        name: 'Images & Icons',
        description: 'Widgets de imagens e ícones',
        iconCodePoint: 0xe3f4, // Icons.image
        widgetCount: 8,
      ),
      const WidgetCategoryModel(
        id: 'gestures',
        name: 'Gestures',
        description: 'Widgets de gestos e interação',
        iconCodePoint: 0xe1a5, // Icons.touch_app
        widgetCount: 8,
      ),
      const WidgetCategoryModel(
        id: 'navigation',
        name: 'Navigation',
        description: 'Widgets de navegação',
        iconCodePoint: 0xe571, // Icons.navigation
        widgetCount: 6,
      ),
    ];
  }

  static List<FlutterWidgetModel> getWidgets() {
    return [
      // === LAYOUT WIDGETS ===
      const FlutterWidgetModel(
        id: 'container',
        name: 'Container',
        description:
            'Um widget conveniente que combina pintura, posicionamento e dimensionamento.',
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
        properties: [
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

      const FlutterWidgetModel(
        id: 'row',
        name: 'Row',
        description: 'Organiza widgets filhos horizontalmente.',
        categoryId: 'layout',
        codeExample: '''Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Icon(Icons.star),
    Text('Rating'),
    Text('5.0'),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'children',
            type: 'List<Widget>',
            description: 'Lista de widgets filhos',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'mainAxisAlignment',
            type: 'MainAxisAlignment',
            description: 'Alinhamento no eixo principal',
            isRequired: false,
            defaultValue: 'MainAxisAlignment.start',
          ),
        ],
        difficulty: 'beginner',
        tags: ['layout', 'row', 'horizontal'],
      ),

      const FlutterWidgetModel(
        id: 'column',
        name: 'Column',
        description: 'Organiza widgets filhos verticalmente.',
        categoryId: 'layout',
        codeExample: '''Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Title'),
    Text('Subtitle'),
    ElevatedButton(
      onPressed: () {},
      child: Text('Action'),
    ),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'children',
            type: 'List<Widget>',
            description: 'Lista de widgets filhos',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'mainAxisAlignment',
            type: 'MainAxisAlignment',
            description: 'Alinhamento no eixo principal',
            isRequired: false,
            defaultValue: 'MainAxisAlignment.start',
          ),
        ],
        difficulty: 'beginner',
        tags: ['layout', 'column', 'vertical'],
      ),

      const FlutterWidgetModel(
        id: 'stack',
        name: 'Stack',
        description: 'Empilha widgets uns sobre os outros.',
        categoryId: 'layout',
        codeExample: '''Stack(
  children: [
    Container(
      width: 200,
      height: 200,
      color: Colors.blue,
    ),
    Positioned(
      top: 20,
      left: 20,
      child: Text('Overlay'),
    ),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'children',
            type: 'List<Widget>',
            description: 'Widgets empilhados',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'alignment',
            type: 'AlignmentGeometry',
            description: 'Alinhamento dos filhos',
            isRequired: false,
            defaultValue: 'AlignmentDirectional.topStart',
          ),
        ],
        difficulty: 'intermediate',
        tags: ['layout', 'stack', 'overlay'],
      ),

      const FlutterWidgetModel(
        id: 'padding',
        name: 'Padding',
        description: 'Adiciona espaçamento ao redor de um widget.',
        categoryId: 'layout',
        codeExample: '''Padding(
  padding: EdgeInsets.all(16.0),
  child: Text('Padded Text'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'padding',
            type: 'EdgeInsetsGeometry',
            description: 'Tamanho do espaçamento',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget filho',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['layout', 'padding', 'spacing'],
      ),

      const FlutterWidgetModel(
        id: 'center',
        name: 'Center',
        description: 'Centraliza seu widget filho.',
        categoryId: 'layout',
        codeExample: '''Center(
  child: Text('Centered Text'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget a ser centralizado',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['layout', 'center', 'alignment'],
      ),

      const FlutterWidgetModel(
        id: 'expanded',
        name: 'Expanded',
        description: 'Expande o filho para preencher o espaço disponível.',
        categoryId: 'layout',
        codeExample: '''Row(
  children: [
    Expanded(
      flex: 2,
      child: Container(color: Colors.red),
    ),
    Expanded(
      flex: 1,
      child: Container(color: Colors.blue),
    ),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget a ser expandido',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'flex',
            type: 'int',
            description: 'Fator de expansão',
            isRequired: false,
            defaultValue: '1',
          ),
        ],
        difficulty: 'intermediate',
        tags: ['layout', 'expanded', 'flex'],
      ),

      const FlutterWidgetModel(
        id: 'sizedbox',
        name: 'SizedBox',
        description: 'Uma caixa com tamanho específico.',
        categoryId: 'layout',
        codeExample: '''SizedBox(
  width: 100,
  height: 100,
  child: Container(color: Colors.blue),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'width',
            type: 'double?',
            description: 'Largura da caixa',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'height',
            type: 'double?',
            description: 'Altura da caixa',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget filho',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['layout', 'size', 'box'],
      ),

      const FlutterWidgetModel(
        id: 'align',
        name: 'Align',
        description: 'Alinha um widget filho em uma posição específica.',
        categoryId: 'layout',
        codeExample: '''Align(
  alignment: Alignment.topRight,
  child: Icon(Icons.star, size: 50),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'alignment',
            type: 'AlignmentGeometry',
            description: 'Como alinhar o filho',
            isRequired: true,
            defaultValue: 'Alignment.center',
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget a ser alinhado',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['layout', 'align', 'position'],
      ),

      const FlutterWidgetModel(
        id: 'aspectratio',
        name: 'AspectRatio',
        description: 'Widget que mantém uma proporção de aspecto específica.',
        categoryId: 'layout',
        codeExample: '''AspectRatio(
  aspectRatio: 16 / 9,
  child: Container(
    color: Colors.blue,
    child: Center(child: Text('16:9')),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'aspectRatio',
            type: 'double',
            description: 'Proporção largura/altura',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget filho',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['layout', 'aspect', 'ratio', 'proportion'],
      ),

      const FlutterWidgetModel(
        id: 'constrainedbox',
        name: 'ConstrainedBox',
        description: 'Aplica constraints adicionais ao seu filho.',
        categoryId: 'layout',
        codeExample: '''ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 100,
    maxWidth: 200,
    minHeight: 50,
    maxHeight: 100,
  ),
  child: Container(color: Colors.amber),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'constraints',
            type: 'BoxConstraints',
            description: 'Constraints a aplicar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget filho',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['layout', 'constraints', 'size', 'bounds'],
      ),

      const FlutterWidgetModel(
        id: 'fittedbox',
        name: 'FittedBox',
        description: 'Escala e posiciona seu filho dentro de si mesmo.',
        categoryId: 'layout',
        codeExample: '''FittedBox(
  fit: BoxFit.contain,
  child: Text(
    'Large Text',
    style: TextStyle(fontSize: 100),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'fit',
            type: 'BoxFit',
            description: 'Como escalar o filho',
            isRequired: false,
            defaultValue: 'BoxFit.contain',
          ),
          WidgetPropertyModel(
            name: 'alignment',
            type: 'AlignmentGeometry',
            description: 'Como alinhar o filho',
            isRequired: false,
            defaultValue: 'Alignment.center',
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget filho',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['layout', 'scale', 'fit', 'resize'],
      ),

      const FlutterWidgetModel(
        id: 'flexible',
        name: 'Flexible',
        description: 'Controla como um filho de Row, Column ou Flex se flexiona.',
        categoryId: 'layout',
        codeExample: '''Row(
  children: [
    Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Container(
        color: Colors.red,
        height: 50,
      ),
    ),
    Flexible(
      flex: 2,
      child: Container(
        color: Colors.blue,
        height: 50,
      ),
    ),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'flex',
            type: 'int',
            description: 'Fator de flex',
            isRequired: false,
            defaultValue: '1',
          ),
          WidgetPropertyModel(
            name: 'fit',
            type: 'FlexFit',
            description: 'Como o filho se ajusta',
            isRequired: false,
            defaultValue: 'FlexFit.loose',
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget filho',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['layout', 'flex', 'flexible', 'row', 'column'],
      ),

      const FlutterWidgetModel(
        id: 'wrap',
        name: 'Wrap',
        description: 'Layout que quebra children em múltiplas linhas.',
        categoryId: 'layout',
        codeExample: '''Wrap(
  spacing: 8.0,
  runSpacing: 4.0,
  children: [
    Chip(label: Text('Tag 1')),
    Chip(label: Text('Tag 2')),
    Chip(label: Text('Tag 3')),
    Chip(label: Text('Tag 4')),
    Chip(label: Text('Tag 5')),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'spacing',
            type: 'double',
            description: 'Espaço horizontal entre children',
            isRequired: false,
            defaultValue: '0.0',
          ),
          WidgetPropertyModel(
            name: 'runSpacing',
            type: 'double',
            description: 'Espaço vertical entre runs',
            isRequired: false,
            defaultValue: '0.0',
          ),
          WidgetPropertyModel(
            name: 'direction',
            type: 'Axis',
            description: 'Direção do layout',
            isRequired: false,
            defaultValue: 'Axis.horizontal',
          ),
          WidgetPropertyModel(
            name: 'children',
            type: 'List<Widget>',
            description: 'Widgets filhos',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['layout', 'wrap', 'flow', 'multiline'],
      ),

      const FlutterWidgetModel(
        id: 'baseline',
        name: 'Baseline',
        description: 'Posiciona seu filho de acordo com a baseline do filho.',
        categoryId: 'layout',
        codeExample: '''Row(
  children: [
    Baseline(
      baseline: 30.0,
      baselineType: TextBaseline.alphabetic,
      child: Text('Hello', style: TextStyle(fontSize: 20)),
    ),
    Baseline(
      baseline: 30.0,
      baselineType: TextBaseline.alphabetic,
      child: Text('World', style: TextStyle(fontSize: 40)),
    ),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'baseline',
            type: 'double',
            description: 'Distância da baseline ao topo',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'baselineType',
            type: 'TextBaseline',
            description: 'Tipo de baseline',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget filho',
            isRequired: true,
          ),
        ],
        difficulty: 'advanced',
        tags: ['layout', 'baseline', 'text', 'alignment'],
      ),

      // === MATERIAL DESIGN WIDGETS ===
      const FlutterWidgetModel(
        id: 'elevatedbutton',
        name: 'ElevatedButton',
        description: 'Botão elevado do Material Design.',
        categoryId: 'material',
        codeExample: '''ElevatedButton(
  onPressed: () {
    print('Button pressed!');
  },
  child: Text('Click Me'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'onPressed',
            type: 'VoidCallback?',
            description: 'Função ao clicar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Conteúdo do botão',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'button', 'elevated'],
      ),

      const FlutterWidgetModel(
        id: 'textbutton',
        name: 'TextButton',
        description: 'Botão de texto simples.',
        categoryId: 'material',
        codeExample: '''TextButton(
  onPressed: () {
    print('Text button pressed!');
  },
  child: Text('Cancel'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'onPressed',
            type: 'VoidCallback?',
            description: 'Função ao clicar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Conteúdo do botão',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'button', 'text'],
      ),

      const FlutterWidgetModel(
        id: 'card',
        name: 'Card',
        description: 'Um painel do Material Design com bordas arredondadas.',
        categoryId: 'material',
        codeExample: '''Card(
  elevation: 4,
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Text('Card Content'),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Conteúdo do card',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'elevation',
            type: 'double?',
            description: 'Elevação da sombra',
            isRequired: false,
            defaultValue: '1.0',
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'card', 'panel'],
      ),

      const FlutterWidgetModel(
        id: 'scaffold',
        name: 'Scaffold',
        description:
            'Implementa a estrutura visual básica do Material Design.',
        categoryId: 'material',
        codeExample: '''Scaffold(
  appBar: AppBar(
    title: Text('My App'),
  ),
  body: Center(
    child: Text('Content'),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'appBar',
            type: 'PreferredSizeWidget?',
            description: 'Barra superior do app',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'body',
            type: 'Widget?',
            description: 'Conteúdo principal',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'scaffold', 'structure'],
      ),

      const FlutterWidgetModel(
        id: 'iconbutton',
        name: 'IconButton',
        description: 'Botão com ícone que responde a toques.',
        categoryId: 'material',
        codeExample: '''IconButton(
  icon: Icon(Icons.favorite),
  color: Colors.red,
  onPressed: () {
    print('Icon button pressed!');
  },
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'icon',
            type: 'Widget',
            description: 'Ícone a ser exibido',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'onPressed',
            type: 'VoidCallback?',
            description: 'Função ao clicar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'color',
            type: 'Color?',
            description: 'Cor do ícone',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'button', 'icon'],
      ),

      const FlutterWidgetModel(
        id: 'floatingactionbutton',
        name: 'FloatingActionButton',
        description: 'Botão de ação flutuante circular.',
        categoryId: 'material',
        codeExample: '''FloatingActionButton(
  onPressed: () {
    print('FAB pressed!');
  },
  child: Icon(Icons.add),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'onPressed',
            type: 'VoidCallback?',
            description: 'Função ao clicar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Ícone ou widget filho',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'fab', 'button', 'floating'],
      ),

      const FlutterWidgetModel(
        id: 'outlinedbutton',
        name: 'OutlinedButton',
        description: 'Botão com borda e sem preenchimento.',
        categoryId: 'material',
        codeExample: '''OutlinedButton(
  onPressed: () {
    print('Outlined button pressed!');
  },
  child: Text('Outlined'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'onPressed',
            type: 'VoidCallback?',
            description: 'Função ao clicar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Conteúdo do botão',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'button', 'outlined', 'border'],
      ),

      const FlutterWidgetModel(
        id: 'appbar',
        name: 'AppBar',
        description: 'Barra de aplicativo Material Design.',
        categoryId: 'material',
        codeExample: '''AppBar(
  title: Text('My App'),
  actions: [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    ),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'title',
            type: 'Widget?',
            description: 'Título da AppBar',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'actions',
            type: 'List<Widget>?',
            description: 'Ações à direita',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'appbar', 'toolbar'],
      ),

      const FlutterWidgetModel(
        id: 'bottomnavigationbar',
        name: 'BottomNavigationBar',
        description: 'Barra de navegação inferior Material.',
        categoryId: 'material',
        codeExample: '''BottomNavigationBar(
  currentIndex: 0,
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ],
  onTap: (index) {},
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'currentIndex',
            type: 'int',
            description: 'Índice selecionado',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'items',
            type: 'List<BottomNavigationBarItem>',
            description: 'Itens da barra',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'onTap',
            type: 'ValueChanged<int>?',
            description: 'Callback ao tocar',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['material', 'navigation', 'bottombar'],
      ),

      const FlutterWidgetModel(
        id: 'drawer',
        name: 'Drawer',
        description: 'Menu lateral deslizante.',
        categoryId: 'material',
        codeExample: '''Drawer(
  child: ListView(
    children: [
      DrawerHeader(
        child: Text('Menu'),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
        onTap: () {},
      ),
    ],
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Conteúdo do drawer',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['material', 'drawer', 'menu', 'navigation'],
      ),

      const FlutterWidgetModel(
        id: 'snackbar',
        name: 'SnackBar',
        description: 'Mensagem temporária na parte inferior.',
        categoryId: 'material',
        codeExample: '''SnackBar(
  content: Text('Item deleted'),
  action: SnackBarAction(
    label: 'Undo',
    onPressed: () {},
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'content',
            type: 'Widget',
            description: 'Conteúdo do snackbar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'action',
            type: 'SnackBarAction?',
            description: 'Ação do snackbar',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['material', 'snackbar', 'notification', 'toast'],
      ),

      const FlutterWidgetModel(
        id: 'alertdialog',
        name: 'AlertDialog',
        description: 'Diálogo de alerta Material.',
        categoryId: 'material',
        codeExample: '''AlertDialog(
  title: Text('Delete item?'),
  content: Text('This action cannot be undone.'),
  actions: [
    TextButton(
      onPressed: () {},
      child: Text('Cancel'),
    ),
    TextButton(
      onPressed: () {},
      child: Text('Delete'),
    ),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'title',
            type: 'Widget?',
            description: 'Título do diálogo',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'content',
            type: 'Widget?',
            description: 'Conteúdo do diálogo',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'actions',
            type: 'List<Widget>?',
            description: 'Ações do diálogo',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['material', 'dialog', 'alert', 'modal'],
      ),

      const FlutterWidgetModel(
        id: 'chip',
        name: 'Chip',
        description: 'Elemento compacto de informação.',
        categoryId: 'material',
        codeExample: '''Chip(
  avatar: CircleAvatar(
    child: Text('A'),
  ),
  label: Text('Tag'),
  onDeleted: () {},
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'label',
            type: 'Widget',
            description: 'Label do chip',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'avatar',
            type: 'Widget?',
            description: 'Avatar à esquerda',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'onDeleted',
            type: 'VoidCallback?',
            description: 'Callback ao deletar',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'chip', 'tag', 'badge'],
      ),

      const FlutterWidgetModel(
        id: 'divider',
        name: 'Divider',
        description: 'Linha divisória horizontal.',
        categoryId: 'material',
        codeExample: '''Column(
  children: [
    Text('Item 1'),
    Divider(),
    Text('Item 2'),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'height',
            type: 'double?',
            description: 'Altura do divider',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'thickness',
            type: 'double?',
            description: 'Espessura da linha',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'color',
            type: 'Color?',
            description: 'Cor da linha',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'divider', 'separator'],
      ),

      const FlutterWidgetModel(
        id: 'linearprogressindicator',
        name: 'LinearProgressIndicator',
        description: 'Indicador de progresso linear.',
        categoryId: 'material',
        codeExample: '''LinearProgressIndicator(
  value: 0.7, // 70%
  backgroundColor: Colors.grey[200],
  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'value',
            type: 'double?',
            description: 'Valor do progresso (0.0 a 1.0)',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'backgroundColor',
            type: 'Color?',
            description: 'Cor de fundo',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'progress', 'indicator', 'loading'],
      ),

      const FlutterWidgetModel(
        id: 'circularprogressindicator',
        name: 'CircularProgressIndicator',
        description: 'Indicador de progresso circular.',
        categoryId: 'material',
        codeExample: '''CircularProgressIndicator(
  value: 0.7, // 70%
  backgroundColor: Colors.grey[200],
  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'value',
            type: 'double?',
            description: 'Valor do progresso (0.0 a 1.0)',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'backgroundColor',
            type: 'Color?',
            description: 'Cor de fundo',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['material', 'progress', 'indicator', 'loading', 'spinner'],
      ),

      const FlutterWidgetModel(
        id: 'tabbar',
        name: 'TabBar',
        description: 'Barra de abas Material.',
        categoryId: 'material',
        codeExample: '''DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home), text: 'Home'),
          Tab(icon: Icon(Icons.search), text: 'Search'),
          Tab(icon: Icon(Icons.person), text: 'Profile'),
        ],
      ),
    ),
    body: TabBarView(
      children: [
        Center(child: Text('Home')),
        Center(child: Text('Search')),
        Center(child: Text('Profile')),
      ],
    ),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'tabs',
            type: 'List<Widget>',
            description: 'Lista de abas',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['material', 'tabs', 'navigation'],
      ),

      const FlutterWidgetModel(
        id: 'datatable',
        name: 'DataTable',
        description: 'Tabela de dados Material.',
        categoryId: 'material',
        codeExample: '''DataTable(
  columns: [
    DataColumn(label: Text('Name')),
    DataColumn(label: Text('Age')),
  ],
  rows: [
    DataRow(cells: [
      DataCell(Text('John')),
      DataCell(Text('25')),
    ]),
    DataRow(cells: [
      DataCell(Text('Jane')),
      DataCell(Text('30')),
    ]),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'columns',
            type: 'List<DataColumn>',
            description: 'Colunas da tabela',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'rows',
            type: 'List<DataRow>',
            description: 'Linhas de dados',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['material', 'table', 'data', 'grid'],
      ),

      const FlutterWidgetModel(
        id: 'bottomsheet',
        name: 'BottomSheet',
        description: 'Painel inferior deslizante.',
        categoryId: 'material',
        codeExample: '''showModalBottomSheet(
  context: context,
  builder: (context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Copy link'),
            onTap: () {},
          ),
        ],
      ),
    );
  },
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'builder',
            type: 'WidgetBuilder',
            description: 'Constrói o conteúdo',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['material', 'bottomsheet', 'modal', 'panel'],
      ),

      const FlutterWidgetModel(
        id: 'dialog',
        name: 'Dialog',
        description: 'Diálogo modal genérico.',
        categoryId: 'material',
        codeExample: '''Dialog(
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Dialog Title'),
        SizedBox(height: 16),
        Text('Dialog content goes here.'),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {},
          child: Text('OK'),
        ),
      ],
    ),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Conteúdo do diálogo',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['material', 'dialog', 'modal', 'popup'],
      ),

      // === INPUT WIDGETS ===
      const FlutterWidgetModel(
        id: 'textfield',
        name: 'TextField',
        description: 'Campo de entrada de texto.',
        categoryId: 'input',
        codeExample: '''TextField(
  decoration: InputDecoration(
    labelText: 'Enter your name',
    hintText: 'John Doe',
    border: OutlineInputBorder(),
  ),
  onChanged: (value) {
    print('Text: \$value');
  },
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'decoration',
            type: 'InputDecoration?',
            description: 'Decoração do campo',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'onChanged',
            type: 'ValueChanged<String>?',
            description: 'Callback quando o texto muda',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['input', 'textfield', 'form'],
      ),

      const FlutterWidgetModel(
        id: 'checkbox',
        name: 'Checkbox',
        description: 'Caixa de seleção.',
        categoryId: 'input',
        codeExample: '''Checkbox(
  value: isChecked,
  onChanged: (bool? value) {
    setState(() {
      isChecked = value ?? false;
    });
  },
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'value',
            type: 'bool',
            description: 'Estado atual',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'onChanged',
            type: 'ValueChanged<bool?>?',
            description: 'Callback quando muda',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['input', 'checkbox', 'selection'],
      ),

      const FlutterWidgetModel(
        id: 'switch',
        name: 'Switch',
        description: 'Interruptor on/off.',
        categoryId: 'input',
        codeExample: '''Switch(
  value: isOn,
  onChanged: (bool value) {
    setState(() {
      isOn = value;
    });
  },
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'value',
            type: 'bool',
            description: 'Estado atual',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'onChanged',
            type: 'ValueChanged<bool>?',
            description: 'Callback quando muda',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['input', 'switch', 'toggle'],
      ),

      const FlutterWidgetModel(
        id: 'radio',
        name: 'Radio',
        description: 'Botão de seleção única em um grupo.',
        categoryId: 'input',
        codeExample: '''Radio<String>(
  value: 'option1',
  groupValue: selectedOption,
  onChanged: (String? value) {
    setState(() {
      selectedOption = value;
    });
  },
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'value',
            type: 'T',
            description: 'Valor deste botão',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'groupValue',
            type: 'T?',
            description: 'Valor selecionado do grupo',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'onChanged',
            type: 'ValueChanged<T?>?',
            description: 'Callback quando muda',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['input', 'radio', 'selection', 'group'],
      ),

      const FlutterWidgetModel(
        id: 'slider',
        name: 'Slider',
        description: 'Controle deslizante para selecionar um valor.',
        categoryId: 'input',
        codeExample: '''Slider(
  value: sliderValue,
  min: 0.0,
  max: 100.0,
  divisions: 10,
  label: sliderValue.round().toString(),
  onChanged: (double value) {
    setState(() {
      sliderValue = value;
    });
  },
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'value',
            type: 'double',
            description: 'Valor atual',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'onChanged',
            type: 'ValueChanged<double>?',
            description: 'Callback quando muda',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'min',
            type: 'double',
            description: 'Valor mínimo',
            isRequired: false,
            defaultValue: '0.0',
          ),
          WidgetPropertyModel(
            name: 'max',
            type: 'double',
            description: 'Valor máximo',
            isRequired: false,
            defaultValue: '1.0',
          ),
        ],
        difficulty: 'beginner',
        tags: ['input', 'slider', 'range'],
      ),

      const FlutterWidgetModel(
        id: 'dropdownbutton',
        name: 'DropdownButton',
        description: 'Botão que abre um menu dropdown.',
        categoryId: 'input',
        codeExample: '''DropdownButton<String>(
  value: selectedValue,
  items: ['Option 1', 'Option 2', 'Option 3']
      .map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (String? newValue) {
    setState(() {
      selectedValue = newValue!;
    });
  },
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'value',
            type: 'T?',
            description: 'Valor selecionado',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'items',
            type: 'List<DropdownMenuItem<T>>?',
            description: 'Itens do menu',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'onChanged',
            type: 'ValueChanged<T?>?',
            description: 'Callback quando muda',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['input', 'dropdown', 'menu', 'select'],
      ),

      const FlutterWidgetModel(
        id: 'form',
        name: 'Form',
        description: 'Container para agrupar e validar campos de formulário.',
        categoryId: 'input',
        codeExample: '''Form(
  key: _formKey,
  child: Column(
    children: [
      TextFormField(
        decoration: InputDecoration(labelText: 'Name'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // Process data
          }
        },
        child: Text('Submit'),
      ),
    ],
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'key',
            type: 'GlobalKey<FormState>?',
            description: 'Chave para acessar o Form',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Campos do formulário',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['input', 'form', 'validation'],
      ),

      const FlutterWidgetModel(
        id: 'datepicker',
        name: 'DatePicker',
        description: 'Seletor de data (via showDatePicker).',
        categoryId: 'input',
        codeExample: '''ElevatedButton(
  onPressed: () async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      // Use the selected date
      print('Selected: \$picked');
    }
  },
  child: Text('Pick Date'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'initialDate',
            type: 'DateTime',
            description: 'Data inicial',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'firstDate',
            type: 'DateTime',
            description: 'Data mínima',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'lastDate',
            type: 'DateTime',
            description: 'Data máxima',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['input', 'date', 'picker', 'calendar'],
      ),

      // === SCROLLING WIDGETS ===
      const FlutterWidgetModel(
        id: 'listview',
        name: 'ListView',
        description: 'Lista rolável de widgets.',
        categoryId: 'scrolling',
        codeExample: '''ListView(
  children: [
    ListTile(
      leading: Icon(Icons.person),
      title: Text('John Doe'),
    ),
    ListTile(
      leading: Icon(Icons.email),
      title: Text('john@example.com'),
    ),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'children',
            type: 'List<Widget>',
            description: 'Lista de widgets',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'scrollDirection',
            type: 'Axis',
            description: 'Direção do scroll',
            isRequired: false,
            defaultValue: 'Axis.vertical',
          ),
        ],
        difficulty: 'beginner',
        tags: ['scrolling', 'list', 'vertical'],
      ),

      const FlutterWidgetModel(
        id: 'gridview',
        name: 'GridView',
        description: 'Grade rolável de widgets.',
        categoryId: 'scrolling',
        codeExample: '''GridView.count(
  crossAxisCount: 2,
  children: List.generate(10, (index) {
    return Card(
      child: Center(
        child: Text('Item \$index'),
      ),
    );
  }),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'crossAxisCount',
            type: 'int',
            description: 'Número de colunas',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'children',
            type: 'List<Widget>',
            description: 'Widgets da grade',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['scrolling', 'grid', 'layout'],
      ),

      const FlutterWidgetModel(
        id: 'pageview',
        name: 'PageView',
        description: 'Visualização de páginas deslizáveis.',
        categoryId: 'scrolling',
        codeExample: '''PageView(
  children: [
    Container(
      color: Colors.red,
      child: Center(child: Text('Page 1')),
    ),
    Container(
      color: Colors.blue,
      child: Center(child: Text('Page 2')),
    ),
    Container(
      color: Colors.green,
      child: Center(child: Text('Page 3')),
    ),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'children',
            type: 'List<Widget>',
            description: 'Páginas a exibir',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'controller',
            type: 'PageController?',
            description: 'Controlador de página',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'scrollDirection',
            type: 'Axis',
            description: 'Direção de rolagem (horizontal/vertical)',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['scrolling', 'pages', 'swipe'],
      ),

      const FlutterWidgetModel(
        id: 'singlechildscrollview',
        name: 'SingleChildScrollView',
        description: 'Widget rolável com um único filho.',
        categoryId: 'scrolling',
        codeExample: '''SingleChildScrollView(
  child: Column(
    children: [
      Container(height: 200, color: Colors.red),
      Container(height: 200, color: Colors.blue),
      Container(height: 200, color: Colors.green),
      Container(height: 200, color: Colors.orange),
    ],
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget filho',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'scrollDirection',
            type: 'Axis',
            description: 'Direção de rolagem',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'padding',
            type: 'EdgeInsetsGeometry?',
            description: 'Espaçamento interno',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['scrolling', 'scroll', 'single'],
      ),

      const FlutterWidgetModel(
        id: 'customscrollview',
        name: 'CustomScrollView',
        description: 'Scroll customizado com slivers.',
        categoryId: 'scrolling',
        codeExample: '''CustomScrollView(
  slivers: [
    SliverAppBar(
      floating: true,
      title: Text('Custom Scroll'),
      expandedHeight: 200,
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(
          title: Text('Item \$index'),
        ),
        childCount: 20,
      ),
    ),
  ],
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'slivers',
            type: 'List<Widget>',
            description: 'Lista de widgets sliver',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'scrollDirection',
            type: 'Axis',
            description: 'Direção de rolagem',
            isRequired: false,
          ),
        ],
        difficulty: 'advanced',
        tags: ['scrolling', 'sliver', 'custom'],
      ),

      // === ANIMATION WIDGETS ===
      const FlutterWidgetModel(
        id: 'animatedcontainer',
        name: 'AnimatedContainer',
        description: 'Container que anima mudanças de propriedades.',
        categoryId: 'animation',
        codeExample: '''AnimatedContainer(
  duration: Duration(seconds: 1),
  width: isExpanded ? 200 : 100,
  height: isExpanded ? 200 : 100,
  color: isExpanded ? Colors.blue : Colors.red,
  child: Center(child: Text('Animate')),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'duration',
            type: 'Duration',
            description: 'Duração da animação',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget filho',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['animation', 'container', 'transition'],
      ),

      const FlutterWidgetModel(
        id: 'hero',
        name: 'Hero',
        description: 'Cria animações entre telas.',
        categoryId: 'animation',
        codeExample: '''Hero(
  tag: 'image-hero',
  child: Image.network('https://...'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'tag',
            type: 'Object',
            description: 'Identificador único',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget a animar',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['animation', 'hero', 'navigation'],
      ),

      const FlutterWidgetModel(
        id: 'animatedbuilder',
        name: 'AnimatedBuilder',
        description: 'Construtor de widget animado customizado.',
        categoryId: 'animation',
        codeExample: '''AnimatedBuilder(
  animation: animationController,
  builder: (context, child) {
    return Transform.rotate(
      angle: animationController.value * 2 * pi,
      child: child,
    );
  },
  child: Icon(Icons.refresh, size: 50),
)''',
        imports: ['package:flutter/material.dart', 'dart:math'],
        properties: [
          WidgetPropertyModel(
            name: 'animation',
            type: 'Listenable',
            description: 'Animação a observar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'builder',
            type: 'TransitionBuilder',
            description: 'Construtor do widget',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget filho não recontruído',
            isRequired: false,
          ),
        ],
        difficulty: 'advanced',
        tags: ['animation', 'builder', 'custom'],
      ),

      const FlutterWidgetModel(
        id: 'animatedlist',
        name: 'AnimatedList',
        description: 'Lista que anima inserções e remoções.',
        categoryId: 'animation',
        codeExample: '''AnimatedList(
  key: listKey,
  initialItemCount: items.length,
  itemBuilder: (context, index, animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text(items[index]),
      ),
    );
  },
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'itemBuilder',
            type: 'AnimatedItemBuilder',
            description: 'Construtor de item',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'initialItemCount',
            type: 'int',
            description: 'Número inicial de itens',
            isRequired: false,
          ),
        ],
        difficulty: 'advanced',
        tags: ['animation', 'list', 'transition'],
      ),

      const FlutterWidgetModel(
        id: 'fadeinimage',
        name: 'FadeInImage',
        description: 'Imagem que aparece com fade.',
        categoryId: 'animation',
        codeExample: '''FadeInImage(
  placeholder: AssetImage('assets/placeholder.png'),
  image: NetworkImage('https://example.com/image.jpg'),
  fadeInDuration: Duration(milliseconds: 500),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'placeholder',
            type: 'ImageProvider',
            description: 'Imagem placeholder',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'image',
            type: 'ImageProvider',
            description: 'Imagem final',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'fadeInDuration',
            type: 'Duration',
            description: 'Duração do fade',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['animation', 'image', 'fade'],
      ),

      const FlutterWidgetModel(
        id: 'scaletransition',
        name: 'ScaleTransition',
        description: 'Transição de escala animada.',
        categoryId: 'animation',
        codeExample: '''ScaleTransition(
  scale: animation,
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
    child: Icon(Icons.star),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'scale',
            type: 'Animation<double>',
            description: 'Animação de escala',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget a escalar',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'alignment',
            type: 'Alignment',
            description: 'Ponto de origem da escala',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['animation', 'scale', 'transition'],
      ),

      const FlutterWidgetModel(
        id: 'slidetransition',
        name: 'SlideTransition',
        description: 'Transição de deslizamento animada.',
        categoryId: 'animation',
        codeExample: '''SlideTransition(
  position: Tween<Offset>(
    begin: Offset(-1, 0),
    end: Offset.zero,
  ).animate(animation),
  child: Container(
    width: 200,
    height: 100,
    color: Colors.green,
    child: Center(child: Text('Slide')),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'position',
            type: 'Animation<Offset>',
            description: 'Animação de posição',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget a deslizar',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['animation', 'slide', 'transition'],
      ),

      const FlutterWidgetModel(
        id: 'rotationtransition',
        name: 'RotationTransition',
        description: 'Transição de rotação animada.',
        categoryId: 'animation',
        codeExample: '''RotationTransition(
  turns: animation,
  child: Container(
    width: 100,
    height: 100,
    color: Colors.orange,
    child: Icon(Icons.refresh, size: 50),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'turns',
            type: 'Animation<double>',
            description: 'Animação de rotação (0-1 = 0-360°)',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget a rotacionar',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'alignment',
            type: 'Alignment',
            description: 'Ponto de rotação',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['animation', 'rotation', 'transition'],
      ),

      // === CUPERTINO WIDGETS ===
      const FlutterWidgetModel(
        id: 'cupertinobutton',
        name: 'CupertinoButton',
        description: 'Botão estilo iOS.',
        categoryId: 'cupertino',
        codeExample: '''CupertinoButton(
  color: CupertinoColors.activeBlue,
  onPressed: () {
    print('iOS button pressed!');
  },
  child: Text('iOS Button'),
)''',
        imports: ['package:flutter/cupertino.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'onPressed',
            type: 'VoidCallback?',
            description: 'Função ao clicar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Conteúdo do botão',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['cupertino', 'ios', 'button'],
      ),

      const FlutterWidgetModel(
        id: 'cupertinoswitch',
        name: 'CupertinoSwitch',
        description: 'Switch estilo iOS.',
        categoryId: 'cupertino',
        codeExample: '''CupertinoSwitch(
  value: isOn,
  onChanged: (bool value) {
    setState(() {
      isOn = value;
    });
  },
)''',
        imports: ['package:flutter/cupertino.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'value',
            type: 'bool',
            description: 'Estado atual',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'onChanged',
            type: 'ValueChanged<bool>?',
            description: 'Callback quando muda',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['cupertino', 'ios', 'switch'],
      ),

      const FlutterWidgetModel(
        id: 'cupertinotextfield',
        name: 'CupertinoTextField',
        description: 'Campo de texto estilo iOS.',
        categoryId: 'cupertino',
        codeExample: '''CupertinoTextField(
  placeholder: 'Enter text',
  padding: EdgeInsets.all(12),
  decoration: BoxDecoration(
    border: Border.all(color: CupertinoColors.systemGrey),
    borderRadius: BorderRadius.circular(8),
  ),
  onChanged: (value) {
    print(value);
  },
)''',
        imports: ['package:flutter/cupertino.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'placeholder',
            type: 'String?',
            description: 'Texto placeholder',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'onChanged',
            type: 'ValueChanged<String>?',
            description: 'Callback quando texto muda',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'padding',
            type: 'EdgeInsetsGeometry',
            description: 'Espaçamento interno',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['cupertino', 'ios', 'input', 'textfield'],
      ),

      const FlutterWidgetModel(
        id: 'cupertinosegmentedcontrol',
        name: 'CupertinoSegmentedControl',
        description: 'Controle segmentado estilo iOS.',
        categoryId: 'cupertino',
        codeExample: '''CupertinoSegmentedControl<int>(
  groupValue: selectedSegment,
  children: {
    0: Text('Option 1'),
    1: Text('Option 2'),
    2: Text('Option 3'),
  },
  onValueChanged: (int value) {
    setState(() {
      selectedSegment = value;
    });
  },
)''',
        imports: ['package:flutter/cupertino.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'groupValue',
            type: 'T',
            description: 'Valor selecionado',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'children',
            type: 'Map<T, Widget>',
            description: 'Opções do controle',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'onValueChanged',
            type: 'ValueChanged<T>',
            description: 'Callback quando muda',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['cupertino', 'ios', 'segmented', 'control'],
      ),

      const FlutterWidgetModel(
        id: 'cupertinopicker',
        name: 'CupertinoPicker',
        description: 'Seletor estilo iOS.',
        categoryId: 'cupertino',
        codeExample: '''CupertinoPicker(
  itemExtent: 32,
  onSelectedItemChanged: (int index) {
    print('Selected: \$index');
  },
  children: List.generate(10, (index) {
    return Center(child: Text('Item \$index'));
  }),
)''',
        imports: ['package:flutter/cupertino.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'itemExtent',
            type: 'double',
            description: 'Altura de cada item',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'onSelectedItemChanged',
            type: 'ValueChanged<int>',
            description: 'Callback quando item muda',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'children',
            type: 'List<Widget>',
            description: 'Itens do picker',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['cupertino', 'ios', 'picker', 'selector'],
      ),

      const FlutterWidgetModel(
        id: 'cupertinoalertdialog',
        name: 'CupertinoAlertDialog',
        description: 'Diálogo de alerta estilo iOS.',
        categoryId: 'cupertino',
        codeExample: '''CupertinoAlertDialog(
  title: Text('Alert'),
  content: Text('This is an iOS-style alert dialog.'),
  actions: [
    CupertinoDialogAction(
      child: Text('Cancel'),
      onPressed: () => Navigator.pop(context),
    ),
    CupertinoDialogAction(
      isDefaultAction: true,
      child: Text('OK'),
      onPressed: () => Navigator.pop(context),
    ),
  ],
)''',
        imports: ['package:flutter/cupertino.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'title',
            type: 'Widget?',
            description: 'Título do diálogo',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'content',
            type: 'Widget?',
            description: 'Conteúdo do diálogo',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'actions',
            type: 'List<Widget>',
            description: 'Ações do diálogo',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['cupertino', 'ios', 'alert', 'dialog'],
      ),

      const FlutterWidgetModel(
        id: 'cupertinocontextmenu',
        name: 'CupertinoContextMenu',
        description: 'Menu de contexto estilo iOS.',
        categoryId: 'cupertino',
        codeExample: '''CupertinoContextMenu(
  actions: [
    CupertinoContextMenuAction(
      child: Text('Action 1'),
      onPressed: () => Navigator.pop(context),
    ),
    CupertinoContextMenuAction(
      child: Text('Action 2'),
      onPressed: () => Navigator.pop(context),
    ),
  ],
  child: Container(
    width: 100,
    height: 100,
    color: CupertinoColors.systemBlue,
    child: Center(child: Text('Long Press')),
  ),
)''',
        imports: ['package:flutter/cupertino.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'actions',
            type: 'List<Widget>',
            description: 'Ações do menu',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget a exibir',
            isRequired: true,
          ),
        ],
        difficulty: 'advanced',
        tags: ['cupertino', 'ios', 'context', 'menu'],
      ),

      const FlutterWidgetModel(
        id: 'cupertinonavigationbar',
        name: 'CupertinoNavigationBar',
        description: 'Barra de navegação estilo iOS.',
        categoryId: 'cupertino',
        codeExample: '''CupertinoNavigationBar(
  middle: Text('Title'),
  leading: CupertinoButton(
    padding: EdgeInsets.zero,
    child: Icon(CupertinoIcons.back),
    onPressed: () => Navigator.pop(context),
  ),
  trailing: CupertinoButton(
    padding: EdgeInsets.zero,
    child: Icon(CupertinoIcons.add),
    onPressed: () {},
  ),
)''',
        imports: ['package:flutter/cupertino.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'middle',
            type: 'Widget?',
            description: 'Widget central (título)',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'leading',
            type: 'Widget?',
            description: 'Widget à esquerda',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'trailing',
            type: 'Widget?',
            description: 'Widget à direita',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['cupertino', 'ios', 'navigation', 'bar'],
      ),

      // === TEXT & FONTS WIDGETS ===
      const FlutterWidgetModel(
        id: 'text',
        name: 'Text',
        description: 'Widget básico para exibir texto.',
        categoryId: 'text',
        codeExample: '''Text(
  'Hello World',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'data',
            type: 'String',
            description: 'Texto a exibir',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'style',
            type: 'TextStyle?',
            description: 'Estilo do texto',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'textAlign',
            type: 'TextAlign?',
            description: 'Alinhamento do texto',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['text', 'typography', 'basic'],
      ),

      const FlutterWidgetModel(
        id: 'richtext',
        name: 'RichText',
        description: 'Texto com múltiplos estilos.',
        categoryId: 'text',
        codeExample: '''RichText(
  text: TextSpan(
    text: 'Hello ',
    style: TextStyle(color: Colors.black),
    children: [
      TextSpan(
        text: 'bold',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(text: ' and '),
      TextSpan(
        text: 'red',
        style: TextStyle(color: Colors.red),
      ),
    ],
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'text',
            type: 'InlineSpan',
            description: 'Conteúdo do texto',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'textAlign',
            type: 'TextAlign',
            description: 'Alinhamento do texto',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['text', 'rich', 'styled'],
      ),

      const FlutterWidgetModel(
        id: 'selectabletext',
        name: 'SelectableText',
        description: 'Texto que pode ser selecionado e copiado.',
        categoryId: 'text',
        codeExample: '''SelectableText(
  'This text can be selected',
  style: TextStyle(fontSize: 18),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'data',
            type: 'String',
            description: 'Texto a exibir',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'style',
            type: 'TextStyle?',
            description: 'Estilo do texto',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['text', 'selectable', 'copy'],
      ),

      const FlutterWidgetModel(
        id: 'defaulttextstyle',
        name: 'DefaultTextStyle',
        description: 'Define estilo padrão para textos filhos.',
        categoryId: 'text',
        codeExample: '''DefaultTextStyle(
  style: TextStyle(
    fontSize: 20,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  ),
  child: Column(
    children: [
      Text('Text 1'),
      Text('Text 2'),
      Text('Text 3'),
    ],
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'style',
            type: 'TextStyle',
            description: 'Estilo padrão',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget filho',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['text', 'style', 'default'],
      ),

      const FlutterWidgetModel(
        id: 'animateddefaulttextstyle',
        name: 'AnimatedDefaultTextStyle',
        description: 'Estilo de texto padrão com animação.',
        categoryId: 'text',
        codeExample: '''AnimatedDefaultTextStyle(
  duration: Duration(seconds: 1),
  style: isBig ? TextStyle(
    fontSize: 32,
    color: Colors.blue,
  ) : TextStyle(
    fontSize: 16,
    color: Colors.red,
  ),
  child: Text('Animated Text'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'style',
            type: 'TextStyle',
            description: 'Estilo do texto',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'duration',
            type: 'Duration',
            description: 'Duração da animação',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget filho',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['text', 'animated', 'style'],
      ),

      const FlutterWidgetModel(
        id: 'rotatedbox',
        name: 'RotatedBox',
        description: 'Rotaciona widget em quartos de volta.',
        categoryId: 'text',
        codeExample: '''RotatedBox(
  quarterTurns: 1,
  child: Text(
    'Rotated',
    style: TextStyle(fontSize: 24),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'quarterTurns',
            type: 'int',
            description: 'Número de quartos de volta (90° cada)',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget a rotacionar',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['text', 'rotation', 'transform'],
      ),

      const FlutterWidgetModel(
        id: 'opacitytext',
        name: 'Opacity',
        description: 'Aplica transparência ao widget.',
        categoryId: 'text',
        codeExample: '''Opacity(
  opacity: 0.5,
  child: Text(
    'Semi-transparent text',
    style: TextStyle(fontSize: 20),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'opacity',
            type: 'double',
            description: 'Opacidade (0.0 a 1.0)',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget filho',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['text', 'opacity', 'transparency'],
      ),

      const FlutterWidgetModel(
        id: 'fittedboxtext',
        name: 'FittedBox',
        description: 'Escala e posiciona filho dentro dos limites.',
        categoryId: 'text',
        codeExample: '''FittedBox(
  fit: BoxFit.contain,
  child: Text(
    'Fitted Text',
    style: TextStyle(fontSize: 100),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'fit',
            type: 'BoxFit',
            description: 'Como ajustar o filho',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget filho',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['text', 'fitted', 'scale'],
      ),

      const FlutterWidgetModel(
        id: 'transformrotate',
        name: 'Transform.rotate',
        description: 'Rotaciona widget em qualquer ângulo.',
        categoryId: 'text',
        codeExample: '''Transform.rotate(
  angle: 0.5,
  child: Text(
    'Rotated',
    style: TextStyle(fontSize: 24),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'angle',
            type: 'double',
            description: 'Ângulo em radianos',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget a rotacionar',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['text', 'transform', 'rotation'],
      ),

      const FlutterWidgetModel(
        id: 'directionality',
        name: 'Directionality',
        description: 'Define direção do texto (LTR/RTL).',
        categoryId: 'text',
        codeExample: '''Directionality(
  textDirection: TextDirection.rtl,
  child: Text('مرحبا بك'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'textDirection',
            type: 'TextDirection',
            description: 'Direção do texto',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget filho',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['text', 'direction', 'rtl', 'i18n'],
      ),

      // === IMAGES & ICONS WIDGETS ===
      const FlutterWidgetModel(
        id: 'image',
        name: 'Image',
        description: 'Exibe uma imagem.',
        categoryId: 'images',
        codeExample: '''Image.asset(
  'assets/images/logo.png',
  width: 200,
  height: 200,
  fit: BoxFit.cover,
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'image',
            type: 'ImageProvider',
            description: 'Provedor de imagem',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'width',
            type: 'double?',
            description: 'Largura da imagem',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'height',
            type: 'double?',
            description: 'Altura da imagem',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'fit',
            type: 'BoxFit?',
            description: 'Como ajustar a imagem',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['image', 'asset', 'display'],
      ),

      const FlutterWidgetModel(
        id: 'icon',
        name: 'Icon',
        description: 'Exibe um ícone do Material ou Cupertino.',
        categoryId: 'images',
        codeExample: '''Icon(
  Icons.favorite,
  size: 48,
  color: Colors.red,
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'icon',
            type: 'IconData',
            description: 'Ícone a exibir',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'size',
            type: 'double?',
            description: 'Tamanho do ícone',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'color',
            type: 'Color?',
            description: 'Cor do ícone',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['icon', 'material', 'display'],
      ),

      const FlutterWidgetModel(
        id: 'circleavatar',
        name: 'CircleAvatar',
        description: 'Avatar circular com imagem ou texto.',
        categoryId: 'images',
        codeExample: '''CircleAvatar(
  radius: 40,
  backgroundColor: Colors.blue,
  child: Text(
    'AB',
    style: TextStyle(fontSize: 24, color: Colors.white),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'radius',
            type: 'double',
            description: 'Raio do avatar',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'backgroundColor',
            type: 'Color?',
            description: 'Cor de fundo',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Conteúdo do avatar',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'backgroundImage',
            type: 'ImageProvider?',
            description: 'Imagem de fundo',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['avatar', 'circle', 'profile'],
      ),

      const FlutterWidgetModel(
        id: 'imageicon',
        name: 'ImageIcon',
        description: 'Ícone customizado de uma imagem.',
        categoryId: 'images',
        codeExample: '''ImageIcon(
  AssetImage('assets/icons/custom_icon.png'),
  size: 48,
  color: Colors.blue,
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'image',
            type: 'ImageProvider',
            description: 'Imagem do ícone',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'size',
            type: 'double?',
            description: 'Tamanho do ícone',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'color',
            type: 'Color?',
            description: 'Cor do ícone',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['icon', 'image', 'custom'],
      ),

      const FlutterWidgetModel(
        id: 'cliprrect',
        name: 'ClipRRect',
        description: 'Recorta filho com bordas arredondadas.',
        categoryId: 'images',
        codeExample: '''ClipRRect(
  borderRadius: BorderRadius.circular(16),
  child: Image.network(
    'https://picsum.photos/200',
    width: 200,
    height: 200,
    fit: BoxFit.cover,
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'borderRadius',
            type: 'BorderRadiusGeometry',
            description: 'Raio das bordas',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget a recortar',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['clip', 'rounded', 'image'],
      ),

      const FlutterWidgetModel(
        id: 'placeholder',
        name: 'Placeholder',
        description: 'Placeholder enquanto conteúdo carrega.',
        categoryId: 'images',
        codeExample: '''Placeholder(
  fallbackWidth: 200,
  fallbackHeight: 200,
  color: Colors.grey,
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'fallbackWidth',
            type: 'double',
            description: 'Largura padrão',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'fallbackHeight',
            type: 'double',
            description: 'Altura padrão',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'color',
            type: 'Color',
            description: 'Cor do placeholder',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['placeholder', 'loading', 'image'],
      ),

      const FlutterWidgetModel(
        id: 'decoratedbox',
        name: 'DecoratedBox',
        description: 'Adiciona decoração ao filho.',
        categoryId: 'images',
        codeExample: '''DecoratedBox(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.purple],
    ),
    borderRadius: BorderRadius.circular(12),
  ),
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Icon(Icons.star, size: 48, color: Colors.white),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'decoration',
            type: 'Decoration',
            description: 'Decoração a aplicar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget filho',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['decoration', 'gradient', 'box'],
      ),

      const FlutterWidgetModel(
        id: 'backdrop',
        name: 'BackdropFilter',
        description: 'Aplica filtro ao fundo.',
        categoryId: 'images',
        codeExample: '''BackdropFilter(
  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
  child: Container(
    width: 200,
    height: 200,
    color: Colors.white.withOpacity(0.3),
    child: Center(child: Text('Blur Effect')),
  ),
)''',
        imports: ['package:flutter/material.dart', 'dart:ui'],
        properties: [
          WidgetPropertyModel(
            name: 'filter',
            type: 'ImageFilter',
            description: 'Filtro a aplicar',
            isRequired: true,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget filho',
            isRequired: false,
          ),
        ],
        difficulty: 'advanced',
        tags: ['filter', 'blur', 'backdrop'],
      ),

      // === GESTURES WIDGETS ===
      const FlutterWidgetModel(
        id: 'gesturedetector',
        name: 'GestureDetector',
        description: 'Detecta gestos do usuário.',
        categoryId: 'gestures',
        codeExample: '''GestureDetector(
  onTap: () => print('Tapped'),
  onDoubleTap: () => print('Double tapped'),
  onLongPress: () => print('Long pressed'),
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
    child: Center(child: Text('Tap me')),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'onTap',
            type: 'GestureTapCallback?',
            description: 'Callback ao tocar',
            isRequired: false,
          ),
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget?',
            description: 'Widget filho',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['gesture', 'tap', 'interaction'],
      ),

      const FlutterWidgetModel(
        id: 'inkwell',
        name: 'InkWell',
        description: 'Resposta Material ao toque com efeito ripple.',
        categoryId: 'gestures',
        codeExample: '''InkWell(
  onTap: () => print('Tapped'),
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Text('Tap me'),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'onTap',
            type: 'GestureTapCallback?',
            description: 'Callback ao tocar',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['gesture', 'material', 'ripple'],
      ),

      const FlutterWidgetModel(
        id: 'draggable',
        name: 'Draggable',
        description: 'Widget que pode ser arrastado.',
        categoryId: 'gestures',
        codeExample: '''Draggable(
  data: 'my_data',
  child: Container(
    width: 100,
    height: 100,
    color: Colors.red,
    child: Center(child: Text('Drag')),
  ),
  feedback: Material(
    child: Container(
      width: 100,
      height: 100,
      color: Colors.red.withOpacity(0.5),
    ),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'data',
            type: 'T',
            description: 'Dados a arrastar',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['gesture', 'drag', 'interaction'],
      ),

      const FlutterWidgetModel(
        id: 'dismissible',
        name: 'Dismissible',
        description: 'Widget que pode ser dispensado deslizando.',
        categoryId: 'gestures',
        codeExample: '''Dismissible(
  key: Key('item'),
  onDismissed: (direction) {
    print('Dismissed');
  },
  background: Container(color: Colors.red),
  child: ListTile(
    title: Text('Swipe to dismiss'),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'key',
            type: 'Key',
            description: 'Chave única',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['gesture', 'swipe', 'dismiss'],
      ),

      const FlutterWidgetModel(
        id: 'refreshindicator',
        name: 'RefreshIndicator',
        description: 'Indicador de pull-to-refresh.',
        categoryId: 'gestures',
        codeExample: '''RefreshIndicator(
  onRefresh: () async {
    await Future.delayed(Duration(seconds: 2));
  },
  child: ListView(
    children: [
      ListTile(title: Text('Pull to refresh')),
    ],
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'onRefresh',
            type: 'RefreshCallback',
            description: 'Callback ao refresh',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['gesture', 'refresh', 'pull'],
      ),

      const FlutterWidgetModel(
        id: 'scrollbar',
        name: 'Scrollbar',
        description: 'Barra de rolagem para widget filho.',
        categoryId: 'gestures',
        codeExample: '''Scrollbar(
  child: ListView.builder(
    itemCount: 50,
    itemBuilder: (context, index) {
      return ListTile(title: Text('Item \$index'));
    },
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Widget com scroll',
            isRequired: true,
          ),
        ],
        difficulty: 'beginner',
        tags: ['scroll', 'scrollbar', 'list'],
      ),

      const FlutterWidgetModel(
        id: 'interactiveviewer',
        name: 'InteractiveViewer',
        description: 'Permite zoom e pan no conteúdo.',
        categoryId: 'gestures',
        codeExample: '''InteractiveViewer(
  boundaryMargin: EdgeInsets.all(20),
  minScale: 0.5,
  maxScale: 4,
  child: Image.network('https://picsum.photos/400'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'child',
            type: 'Widget',
            description: 'Conteúdo interativo',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['gesture', 'zoom', 'pan'],
      ),

      const FlutterWidgetModel(
        id: 'absorberpointer',
        name: 'AbsorbPointer',
        description: 'Absorve eventos de toque.',
        categoryId: 'gestures',
        codeExample: '''AbsorbPointer(
  absorbing: true,
  child: ElevatedButton(
    onPressed: () => print('Will not execute'),
    child: Text('Disabled'),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'absorbing',
            type: 'bool',
            description: 'Se deve absorver toques',
            isRequired: false,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['gesture', 'absorb', 'disable'],
      ),

      // === NAVIGATION WIDGETS ===
      const FlutterWidgetModel(
        id: 'popupmenubutton',
        name: 'PopupMenuButton',
        description: 'Botão com menu popup.',
        categoryId: 'navigation',
        codeExample: '''PopupMenuButton(
  itemBuilder: (context) => [
    PopupMenuItem(value: 1, child: Text('Item 1')),
    PopupMenuItem(value: 2, child: Text('Item 2')),
    PopupMenuItem(value: 3, child: Text('Item 3')),
  ],
  onSelected: (value) => print('Selected: \$value'),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'itemBuilder',
            type: 'PopupMenuItemBuilder<T>',
            description: 'Construtor de itens',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['navigation', 'menu', 'popup'],
      ),

      const FlutterWidgetModel(
        id: 'backbutton',
        name: 'BackButton',
        description: 'Botão voltar padrão.',
        categoryId: 'navigation',
        codeExample: '''BackButton(
  onPressed: () => Navigator.pop(context),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'onPressed',
            type: 'VoidCallback?',
            description: 'Callback ao pressionar',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['navigation', 'back', 'button'],
      ),

      const FlutterWidgetModel(
        id: 'closebutton',
        name: 'CloseButton',
        description: 'Botão fechar padrão.',
        categoryId: 'navigation',
        codeExample: '''CloseButton(
  onPressed: () => Navigator.pop(context),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'onPressed',
            type: 'VoidCallback?',
            description: 'Callback ao pressionar',
            isRequired: false,
          ),
        ],
        difficulty: 'beginner',
        tags: ['navigation', 'close', 'button'],
      ),

      const FlutterWidgetModel(
        id: 'navigationrail',
        name: 'NavigationRail',
        description: 'Rail de navegação lateral.',
        categoryId: 'navigation',
        codeExample: '''NavigationRail(
  selectedIndex: 0,
  destinations: [
    NavigationRailDestination(
      icon: Icon(Icons.home),
      label: Text('Home'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.search),
      label: Text('Search'),
    ),
  ],
  onDestinationSelected: (index) => print(index),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'destinations',
            type: 'List<NavigationRailDestination>',
            description: 'Destinos de navegação',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['navigation', 'rail', 'sidebar'],
      ),

      const FlutterWidgetModel(
        id: 'popscope',
        name: 'PopScope',
        description: 'Controla comportamento de voltar.',
        categoryId: 'navigation',
        codeExample: '''PopScope(
  canPop: false,
  onPopInvoked: (didPop) {
    if (!didPop) {
      print('Pop prevented');
    }
  },
  child: Scaffold(
    body: Center(child: Text('Content')),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'canPop',
            type: 'bool',
            description: 'Pode voltar',
            isRequired: false,
          ),
        ],
        difficulty: 'advanced',
        tags: ['navigation', 'pop', 'scope'],
      ),

      const FlutterWidgetModel(
        id: 'listwheel',
        name: 'ListWheelScrollView',
        description: 'Lista em formato de roda.',
        categoryId: 'navigation',
        codeExample: '''ListWheelScrollView(
  itemExtent: 50,
  children: List.generate(
    20,
    (index) => Center(child: Text('Item \$index')),
  ),
)''',
        imports: ['package:flutter/material.dart'],
        properties: [
          WidgetPropertyModel(
            name: 'itemExtent',
            type: 'double',
            description: 'Altura de cada item',
            isRequired: true,
          ),
        ],
        difficulty: 'intermediate',
        tags: ['navigation', 'wheel', 'scroll'],
      ),
    ];
  }
}
