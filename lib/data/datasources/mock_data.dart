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
