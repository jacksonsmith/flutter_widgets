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
    ];
  }
}
