import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';

class WidgetPreview extends StatefulWidget {
  final FlutterWidgetEntity widgetEntity;

  const WidgetPreview({
    required this.widgetEntity,
    super.key,
  });

  @override
  State<WidgetPreview> createState() => _WidgetPreviewState();
}

class _WidgetPreviewState extends State<WidgetPreview> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.widgetEntity.name,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            widget.widgetEntity.description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          Chip(label: Text(widget.widgetEntity.difficulty.displayName)),
          const SizedBox(height: 24),
          Text(
            'Preview:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Center(
              child: _buildPreview(widget.widgetEntity.id),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPreview(String widgetId) {
    switch (widgetId) {
      // Layout Widgets
      case 'container':
        return Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              'Container',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );

      case 'row':
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60,
              height: 60,
              color: Colors.red,
              child: const Icon(Icons.star, color: Colors.white),
            ),
            const SizedBox(width: 8),
            Container(
              width: 60,
              height: 60,
              color: Colors.green,
              child: const Icon(Icons.favorite, color: Colors.white),
            ),
            const SizedBox(width: 8),
            Container(
              width: 60,
              height: 60,
              color: Colors.blue,
              child: const Icon(Icons.thumb_up, color: Colors.white),
            ),
          ],
        );

      case 'column':
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 120,
              height: 40,
              color: Colors.red,
              child: const Center(child: Text('Item 1', style: TextStyle(color: Colors.white))),
            ),
            const SizedBox(height: 8),
            Container(
              width: 120,
              height: 40,
              color: Colors.green,
              child: const Center(child: Text('Item 2', style: TextStyle(color: Colors.white))),
            ),
            const SizedBox(height: 8),
            Container(
              width: 120,
              height: 40,
              color: Colors.blue,
              child: const Center(child: Text('Item 3', style: TextStyle(color: Colors.white))),
            ),
          ],
        );

      case 'stack':
        return SizedBox(
          width: 150,
          height: 150,
          child: Stack(
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                ),
              ),
              const Positioned(
                bottom: 10,
                right: 10,
                child: Icon(Icons.star, color: Colors.yellow, size: 40),
              ),
            ],
          ),
        );

      case 'padding':
        return Padding(
          padding: const EdgeInsets.all(24),
          child: Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                'Padded',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        );

      case 'center':
        return Container(
          width: 200,
          height: 120,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border.all(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Icon(
              Icons.center_focus_strong,
              size: 48,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        );

      case 'expanded':
        return SizedBox(
          width: 200,
          height: 100,
          child: Row(
            children: [
              Container(
                width: 50,
                color: Colors.red,
                child: const Center(child: Text('Fixed', style: TextStyle(fontSize: 10))),
              ),
              const Expanded(
                child: ColoredBox(
                  color: Colors.green,
                  child: Center(child: Text('Expanded', style: TextStyle(color: Colors.white))),
                ),
              ),
              Container(
                width: 50,
                color: Colors.blue,
                child: const Center(child: Text('Fixed', style: TextStyle(fontSize: 10, color: Colors.white))),
              ),
            ],
          ),
        );

      case 'sizedbox':
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 40,
              color: Colors.blue,
              child: const Center(child: Text('Box 1', style: TextStyle(color: Colors.white))),
            ),
            const SizedBox(height: 20),
            Container(
              width: 100,
              height: 40,
              color: Colors.green,
              child: const Center(child: Text('Box 2', style: TextStyle(color: Colors.white))),
            ),
          ],
        );

      case 'scaffold':
        return SizedBox(
          width: 200,
          height: 250,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Scaffold', style: TextStyle(fontSize: 14)),
              toolbarHeight: 40,
            ),
            body: const Center(child: Text('Body')),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              mini: true,
              child: const Icon(Icons.add, size: 20),
            ),
          ),
        );

      case 'align':
        return Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border.all(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.star,
              size: 40,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        );

      case 'aspectratio':
        return AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                '16:9',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );

      case 'constrainedbox':
        return ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 100,
            maxWidth: 150,
            minHeight: 80,
            maxHeight: 100,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                'Constrained',
                style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );

      case 'fittedbox':
        return SizedBox(
          width: 150,
          height: 80,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'FittedBox',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        );

      case 'flexible':
        return SizedBox(
          width: 200,
          height: 60,
          child: Row(
            children: [
              Container(
                width: 50,
                color: Colors.red,
                child: const Center(
                  child: Text('Fixed', style: TextStyle(fontSize: 10, color: Colors.white)),
                ),
              ),
              const Flexible(
                flex: 1,
                child: ColoredBox(
                  color: Colors.orange,
                  child: Center(
                    child: Text('Flex 1', style: TextStyle(fontSize: 10, color: Colors.white)),
                  ),
                ),
              ),
              const Flexible(
                flex: 2,
                child: ColoredBox(
                  color: Colors.blue,
                  child: Center(
                    child: Text('Flex 2', style: TextStyle(fontSize: 10, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        );

      case 'wrap':
        return Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            Chip(
              label: const Text('Tag 1', style: TextStyle(fontSize: 10)),
              backgroundColor: Colors.blue[100],
            ),
            Chip(
              label: const Text('Tag 2', style: TextStyle(fontSize: 10)),
              backgroundColor: Colors.green[100],
            ),
            Chip(
              label: const Text('Tag 3', style: TextStyle(fontSize: 10)),
              backgroundColor: Colors.orange[100],
            ),
            Chip(
              label: const Text('Tag 4', style: TextStyle(fontSize: 10)),
              backgroundColor: Colors.purple[100],
            ),
            Chip(
              label: const Text('Tag 5', style: TextStyle(fontSize: 10)),
              backgroundColor: Colors.pink[100],
            ),
          ],
        );

      case 'baseline':
        return Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'World',
                style: TextStyle(
                  fontSize: 40,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );

      // Material Widgets
      case 'elevatedbutton':
      case 'elevated_button':
        return ElevatedButton(
          onPressed: () {},
          child: const Text('Elevated Button'),
        );

      case 'textbutton':
      case 'text_button':
        return TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
          ),
          child: const Text('Text Button'),
        );

      case 'outlinedbutton':
      case 'outlined_button':
        return OutlinedButton(
          onPressed: () {},
          child: const Text('Outlined Button'),
        );

      case 'card':
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Card Title',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'This is a card widget with some content inside.',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        );

      case 'floatingactionbutton':
      case 'floating_action_button':
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        );

      case 'iconbutton':
      case 'icon_button':
        return IconButton(
          icon: const Icon(Icons.favorite),
          color: Colors.red,
          iconSize: 36,
          onPressed: () {},
        );

      case 'appbar':
        return SizedBox(
          width: 250,
          height: 60,
          child: AppBar(
            title: const Text('AppBar', style: TextStyle(fontSize: 16)),
            actions: [
              IconButton(icon: const Icon(Icons.search, size: 20), onPressed: () {}),
              IconButton(icon: const Icon(Icons.more_vert, size: 20), onPressed: () {}),
            ],
          ),
        );

      case 'bottomnavigationbar':
        return SizedBox(
          width: 250,
          height: 80,
          child: BottomNavigationBar(
            currentIndex: 0,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home, size: 20), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search, size: 20), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.person, size: 20), label: 'Profile'),
            ],
            selectedFontSize: 10,
            unselectedFontSize: 10,
          ),
        );

      case 'drawer':
        return SizedBox(
          width: 200,
          height: 250,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                ListTile(
                  leading: const Icon(Icons.home, size: 20),
                  title: const Text('Home', style: TextStyle(fontSize: 12)),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings, size: 20),
                  title: const Text('Settings', style: TextStyle(fontSize: 12)),
                  onTap: () {},
                ),
              ],
            ),
          ),
        );

      case 'snackbar':
        return Container(
          width: 250,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              const Expanded(
                child: Text('Item deleted', style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('UNDO', style: TextStyle(color: Colors.blue, fontSize: 12)),
              ),
            ],
          ),
        );

      case 'alertdialog':
      case 'dialog':
        return Container(
          width: 200,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).dialogTheme.backgroundColor ?? Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10)],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Dialog Title', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 12),
              Text('Dialog content', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: const Text('CANCEL', style: TextStyle(fontSize: 11))),
                  TextButton(onPressed: () {}, child: const Text('OK', style: TextStyle(fontSize: 11))),
                ],
              ),
            ],
          ),
        );

      case 'expansionpanel':
        return _ExpansionPanelDemo();

      case 'chip':
        return Chip(
          avatar: const CircleAvatar(child: Text('A', style: TextStyle(fontSize: 10))),
          label: const Text('Chip Label', style: TextStyle(fontSize: 12)),
          onDeleted: () {},
        );

      case 'divider':
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Item 1', style: TextStyle(color: Theme.of(context).colorScheme.onSurface)),
            const Divider(thickness: 1),
            Text('Item 2', style: TextStyle(color: Theme.of(context).colorScheme.onSurface)),
          ],
        );

      case 'linearprogressindicator':
        return const SizedBox(
          width: 200,
          child: LinearProgressIndicator(value: 0.7),
        );

      case 'circularprogressindicator':
        return const CircularProgressIndicator(value: 0.7);

      case 'tabbar':
        return Container(
          width: 250,
          height: 100,
          color: Theme.of(context).colorScheme.surface,
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                const TabBar(
                  labelStyle: TextStyle(fontSize: 10),
                  tabs: [
                    Tab(icon: Icon(Icons.home, size: 16), text: 'Home'),
                    Tab(icon: Icon(Icons.search, size: 16), text: 'Search'),
                    Tab(icon: Icon(Icons.person, size: 16), text: 'Profile'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(child: Text('Home', style: TextStyle(fontSize: 10, color: Theme.of(context).colorScheme.onSurface))),
                      Center(child: Text('Search', style: TextStyle(fontSize: 10, color: Theme.of(context).colorScheme.onSurface))),
                      Center(child: Text('Profile', style: TextStyle(fontSize: 10, color: Theme.of(context).colorScheme.onSurface))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );

      case 'datatable':
        return DataTable(
          columnSpacing: 20,
          horizontalMargin: 10,
          dataRowMinHeight: 30,
          dataRowMaxHeight: 40,
          headingRowHeight: 35,
          columns: [
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(
                  Text(
                    'John',
                    style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '25',
                    style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text(
                    'Jane',
                    style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '30',
                    style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );

      case 'bottomsheet':
        return Container(
          width: 200,
          height: 120,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10)],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              ListTile(
                leading: Icon(Icons.share, size: 20, color: Theme.of(context).colorScheme.onSurface),
                title: Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.link, size: 20, color: Theme.of(context).colorScheme.onSurface),
                title: Text(
                  'Copy link',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        );

      // Input Widgets
      case 'textfield':
      case 'text_field':
        return const SizedBox(
          width: 200,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Enter text',
              border: OutlineInputBorder(),
            ),
          ),
        );

      case 'checkbox':
        return Checkbox(
          value: true,
          onChanged: (_) {},
        );

      case 'radio':
        return _RadioDemo();

      case 'slider':
        return SizedBox(
          width: 200,
          child: Slider(
            value: 0.5,
            onChanged: (_) {},
          ),
        );

      case 'dropdownbutton':
        return _DropdownDemo();

      case 'form':
        return _FormDemo();

      case 'datepicker':
        return _DatePickerDemo();

      case 'switch':
        return _SwitchDemo();

      // Scrolling Widgets
      case 'listview':
      case 'list_view':
        return Container(
          height: 200,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Theme.of(context).dividerColor,
            ),
          ),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                child: Text('${index + 1}'),
              ),
              title: Text(
                'List Item ${index + 1}',
                style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
              ),
              subtitle: Text(
                'Subtitle',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ),
          ),
        );

      case 'gridview':
      case 'grid_view':
        return SizedBox(
          height: 200,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: 9,
            itemBuilder: (context, index) => ColoredBox(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        );

      case 'single_child_scroll_view':
        return Container(
          height: 150,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Theme.of(context).dividerColor),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                10,
                (index) {
                  final colors = [
                    Colors.red,
                    Colors.orange,
                    Colors.amber,
                    Colors.green,
                    Colors.teal,
                    Colors.blue,
                    Colors.indigo,
                    Colors.purple,
                    Colors.pink,
                    Colors.cyan,
                  ];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: colors[index].withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Scrollable Item ${index + 1}',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );

      case 'page_view':
        return SizedBox(
          height: 200,
          child: PageView(
            children: const [
              ColoredBox(
                color: Colors.red,
                child: Center(
                  child: Text('Page 1', style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
              ),
              ColoredBox(
                color: Colors.green,
                child: Center(
                  child: Text('Page 2', style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
              ),
              ColoredBox(
                color: Colors.blue,
                child: Center(
                  child: Text('Page 3', style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
              ),
            ],
          ),
        );

      case 'pageview':
        return SizedBox(
          height: 200,
          child: PageView(
            children: const [
              ColoredBox(
                color: Colors.red,
                child: Center(
                  child: Text('Page 1', style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
              ),
              ColoredBox(
                color: Colors.green,
                child: Center(
                  child: Text('Page 2', style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
              ),
              ColoredBox(
                color: Colors.blue,
                child: Center(
                  child: Text('Page 3', style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
              ),
            ],
          ),
        );

      case 'singlechildscrollview':
        return Container(
          height: 150,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Theme.of(context).dividerColor),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                8,
                (index) {
                  final colors = [
                    Colors.red,
                    Colors.orange,
                    Colors.green,
                    Colors.blue,
                    Colors.purple,
                    Colors.pink,
                    Colors.teal,
                    Colors.cyan,
                  ];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: colors[index].withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Item ${index + 1}',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );

      case 'customscrollview':
        return SizedBox(
          height: 250,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                title: Text(
                  'Custom Scroll',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontSize: 14,
                  ),
                ),
                expandedHeight: 80,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Theme.of(context).dividerColor),
                    ),
                    child: Text(
                      'Sliver Item ${index + 1}',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                  childCount: 15,
                ),
              ),
            ],
          ),
        );

      case 'sliverlist':
        return SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Sliver Item #${index + 1}',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  childCount: 15,
                ),
              ),
            ],
          ),
        );

      case 'slivergrid':
        return SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1.5,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        'Grid ${index + 1}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  childCount: 12,
                ),
              ),
            ],
          ),
        );

      // Animation Widgets
      case 'animatedcontainer':
      case 'animated_container':
        return _AnimatedContainerDemo();

      case 'hero':
        return Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Icon(Icons.image, color: Colors.white, size: 48),
          ),
        );

      case 'animated_opacity':
        return _AnimatedOpacityDemo();

      case 'fade_transition':
        return _FadeTransitionDemo();

      case 'animatedbuilder':
        return _AnimatedBuilderDemo();

      case 'animatedlist':
        return _AnimatedListDemo();

      case 'fadeinimage':
        return Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.image, size: 64, color: Colors.grey),
        );

      case 'scaletransition':
        return _ScaleTransitionDemo();

      case 'slidetransition':
        return _SlideTransitionDemo();

      case 'rotationtransition':
        return _RotationTransitionDemo();

      // Cupertino Widgets
      case 'cupertinobutton':
      case 'cupertino_button':
        return CupertinoButton(
          color: CupertinoColors.activeBlue,
          onPressed: () {},
          child: const Text('Cupertino Button'),
        );

      case 'cupertinoswitch':
      case 'cupertino_switch':
        return CupertinoSwitch(
          value: true,
          onChanged: (_) {},
        );

      case 'cupertinoslider':
      case 'cupertino_slider':
        return SizedBox(
          width: 200,
          child: CupertinoSlider(
            value: 0.5,
            onChanged: (_) {},
          ),
        );

      case 'cupertinoactivityindicator':
      case 'cupertino_activity_indicator':
        return const CupertinoActivityIndicator(radius: 20);

      case 'cupertinotextfield':
        return const SizedBox(
          width: 250,
          child: CupertinoTextField(
            placeholder: 'Enter text',
            padding: EdgeInsets.all(12),
          ),
        );

      case 'cupertinosegmentedcontrol':
        return _CupertinoSegmentedControlDemo();

      case 'cupertinopicker':
        return SizedBox(
          height: 150,
          child: CupertinoPicker(
            itemExtent: 32,
            onSelectedItemChanged: (_) {},
            children: List.generate(
              5,
              (index) => Center(
                child: Text('Item ${index + 1}'),
              ),
            ),
          ),
        );

      case 'cupertinoalertdialog':
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: CupertinoColors.systemBackground.resolveFrom(context),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Alert',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('iOS-style alert dialog'),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CupertinoButton(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Text('Cancel'),
                    onPressed: () {},
                  ),
                  CupertinoButton(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Text('OK'),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        );

      case 'cupertinocontextmenu':
        return Container(
          width: 120,
          height: 80,
          decoration: BoxDecoration(
            color: CupertinoColors.activeBlue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              'Long Press',
              style: TextStyle(color: CupertinoColors.white),
            ),
          ),
        );

      case 'cupertinonavigationbar':
        return const SizedBox(
          width: 300,
          child: CupertinoNavigationBar(
            middle: Text('Title'),
            leading: Icon(CupertinoIcons.back),
            trailing: Icon(CupertinoIcons.add),
          ),
        );

      // Text & Fonts Widgets
      case 'text':
        return const Text(
          'Hello World',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        );

      case 'richtext':
        return RichText(
          text: TextSpan(
            text: 'Hello ',
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            children: const [
              TextSpan(
                text: 'bold',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: ' and '),
              TextSpan(
                text: 'colored',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        );

      case 'selectabletext':
        return const SelectableText(
          'This text can be selected',
          style: TextStyle(fontSize: 18),
        );

      case 'defaulttextstyle':
        return const DefaultTextStyle(
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Text 1'),
              SizedBox(height: 4),
              Text('Text 2'),
              SizedBox(height: 4),
              Text('Text 3'),
            ],
          ),
        );

      case 'animateddefaulttextstyle':
        return _AnimatedDefaultTextStyleDemo();

      case 'rotatedbox':
        return const RotatedBox(
          quarterTurns: 1,
          child: Text(
            'Rotated 90°',
            style: TextStyle(fontSize: 20),
          ),
        );

      case 'opacitytext':
        return const Opacity(
          opacity: 0.5,
          child: Text(
            'Semi-transparent',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );

      case 'fittedboxtext':
        return const SizedBox(
          width: 100,
          height: 50,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Fitted',
              style: TextStyle(fontSize: 100),
            ),
          ),
        );

      case 'transformrotate':
        return Transform.rotate(
          angle: 0.3,
          child: const Text(
            'Rotated',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        );

      case 'directionality':
        return const Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            'RTL Text →',
            style: TextStyle(fontSize: 18),
          ),
        );

      // Images & Icons Widgets
      case 'image':
        return Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.image, size: 64, color: Colors.grey),
        );

      case 'icon':
        return const Icon(Icons.favorite, size: 48, color: Colors.red);

      case 'circleavatar':
        return const CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blue,
          child: Text('AB', style: TextStyle(fontSize: 24, color: Colors.white)),
        );

      case 'imageicon':
        return const Icon(Icons.star, size: 48, color: Colors.amber);

      case 'cliprrect':
        return ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            child: const Icon(Icons.image, size: 48, color: Colors.white),
          ),
        );

      case 'placeholder':
        return const Placeholder(
          fallbackWidth: 120,
          fallbackHeight: 120,
          color: Colors.grey,
        );

      case 'decoratedbox':
        return DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.purple],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.star, size: 48, color: Colors.white),
          ),
        );

      case 'backdrop':
        return Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Blur',
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        );

      // Gestures Widgets
      case 'gesturedetector':
        return GestureDetector(
          onTap: () {},
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: const Center(child: Text('Tap', style: TextStyle(color: Colors.white))),
          ),
        );

      case 'inkwell':
        return InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const Text('InkWell Tap'),
          ),
        );

      case 'draggable':
        return Draggable(
          data: 'data',
          feedback: Material(
            child: Container(
              width: 80,
              height: 80,
              color: Colors.red.withValues(alpha: 0.7),
              child: const Center(child: Icon(Icons.drag_indicator, color: Colors.white)),
            ),
          ),
          child: Container(
            width: 80,
            height: 80,
            color: Colors.red,
            child: const Center(child: Icon(Icons.drag_indicator, color: Colors.white)),
          ),
        );

      case 'dismissible':
        return const SizedBox(
          width: 200,
          height: 60,
          child: Card(
            child: ListTile(
              title: Text('Swipe me'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        );

      case 'refreshindicator':
        return SizedBox(
          height: 120,
          child: Center(
            child: Text(
              'Pull to Refresh',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        );

      case 'scrollbar':
        return SizedBox(
          height: 120,
          width: 150,
          child: Scrollbar(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => ListTile(
                title: Text('Item $index', style: const TextStyle(fontSize: 12)),
              ),
            ),
          ),
        );

      case 'interactiveviewer':
        return InteractiveViewer(
          minScale: 0.5,
          maxScale: 2,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            child: const Center(child: Text('Pinch/Zoom', style: TextStyle(color: Colors.white, fontSize: 12))),
          ),
        );

      case 'absorberpointer':
        return AbsorbPointer(
          absorbing: true,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Disabled'),
          ),
        );

      // Navigation Widgets
      case 'popupmenubutton':
        return PopupMenuButton(
          itemBuilder: (context) => const [
            PopupMenuItem(value: 1, child: Text('Item 1')),
            PopupMenuItem(value: 2, child: Text('Item 2')),
          ],
        );

      case 'backbutton':
        return const BackButton();

      case 'closebutton':
        return const CloseButton();

      case 'navigationrail':
        return SizedBox(
          height: 200,
          child: NavigationRail(
            selectedIndex: 0,
            destinations: const [
              NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
              NavigationRailDestination(icon: Icon(Icons.search), label: Text('Search')),
            ],
            onDestinationSelected: (_) {},
          ),
        );

      case 'popscope':
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'PopScope',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        );

      case 'listwheel':
        return SizedBox(
          height: 150,
          child: ListWheelScrollView(
            itemExtent: 40,
            children: List.generate(
              10,
              (index) => Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ),
        );

      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.widgets, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            Text(
              'Preview não disponível',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        );
    }
  }
}

// Animated Container Demo
class _AnimatedContainerDemo extends StatefulWidget {
  @override
  State<_AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<_AnimatedContainerDemo> {
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    // Auto-animate for demo
    Future<void>.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() => _expanded = true);
      }
    });
    Future<void>.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() => _expanded = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: _expanded ? 200 : 100,
      height: _expanded ? 200 : 100,
      decoration: BoxDecoration(
        color: _expanded ? Colors.blue : Colors.red,
        borderRadius: BorderRadius.circular(_expanded ? 50 : 8),
      ),
      child: const Center(
        child: Icon(Icons.touch_app, color: Colors.white),
      ),
    );
  }
}

// Animated Opacity Demo
class _AnimatedOpacityDemo extends StatefulWidget {
  @override
  State<_AnimatedOpacityDemo> createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<_AnimatedOpacityDemo> {
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    // Auto-animate for demo
    Future<void>.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() => _visible = false);
      }
    });
    Future<void>.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() => _visible = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: Container(
        width: 150,
        height: 150,
        color: Colors.green,
        child: const Center(
          child: Text(
            'Fading',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

// Fade Transition Demo
class _FadeTransitionDemo extends StatefulWidget {
  @override
  State<_FadeTransitionDemo> createState() => _FadeTransitionDemoState();
}

class _FadeTransitionDemoState extends State<_FadeTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        width: 150,
        height: 150,
        color: Colors.orange,
        child: const Center(
          child: Icon(Icons.star, color: Colors.white, size: 48),
        ),
      ),
    );
  }
}

// Radio Demo
class _RadioDemo extends StatefulWidget {
  @override
  State<_RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<_RadioDemo> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return RadioGroup<int>(
      groupValue: _selectedValue,
      onChanged: (value) {
        setState(() {
          _selectedValue = value!;
        });
      },
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio<int>(value: 1),
              Text('Option 1'),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio<int>(value: 2),
              Text('Option 2'),
            ],
          ),
        ],
      ),
    );
  }
}

// Dropdown Demo
class _DropdownDemo extends StatefulWidget {
  @override
  State<_DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<_DropdownDemo> {
  String _selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: DropdownButton<String>(
        value: _selectedValue,
        isExpanded: true,
        items: const [
          DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
          DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
          DropdownMenuItem(value: 'Option 3', child: Text('Option 3')),
        ],
        onChanged: (value) {
          setState(() {
            _selectedValue = value!;
          });
        },
      ),
    );
  }
}

// Form Demo
class _FormDemo extends StatefulWidget {
  @override
  State<_FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<_FormDemo> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Required';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                _formKey.currentState!.validate();
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

// DatePicker Demo
class _DatePickerDemo extends StatefulWidget {
  @override
  State<_DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<_DatePickerDemo> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton.icon(
          onPressed: () => _selectDate(context),
          icon: const Icon(Icons.calendar_today),
          label: const Text('Select Date'),
        ),
        if (_selectedDate != null) ...[
          const SizedBox(height: 12),
          Text(
            '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ],
    );
  }
}

// AnimatedBuilder Demo
class _AnimatedBuilderDemo extends StatefulWidget {
  @override
  State<_AnimatedBuilderDemo> createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<_AnimatedBuilderDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * 3.14159,
          child: child,
        );
      },
      child: const Icon(Icons.refresh, size: 50, color: Colors.blue),
    );
  }
}

// AnimatedList Demo
class _AnimatedListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.primaries[index % Colors.primaries.length],
            child: Text('${index + 1}'),
          ),
          title: Text(
            'Item ${index + 1}',
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
      ),
    );
  }
}

// ScaleTransition Demo
class _ScaleTransitionDemo extends StatefulWidget {
  @override
  State<_ScaleTransitionDemo> createState() => _ScaleTransitionDemoState();
}

class _ScaleTransitionDemoState extends State<_ScaleTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(Icons.star, color: Colors.white, size: 48),
      ),
    );
  }
}

// SlideTransition Demo
class _SlideTransitionDemo extends StatefulWidget {
  @override
  State<_SlideTransitionDemo> createState() => _SlideTransitionDemoState();
}

class _SlideTransitionDemoState extends State<_SlideTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: const Offset(-0.3, 0),
      end: const Offset(0.3, 0),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Container(
        width: 120,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Slide',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

// RotationTransition Demo
class _RotationTransitionDemo extends StatefulWidget {
  @override
  State<_RotationTransitionDemo> createState() =>
      _RotationTransitionDemoState();
}

class _RotationTransitionDemoState extends State<_RotationTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(Icons.refresh, color: Colors.white, size: 48),
      ),
    );
  }
}


// CupertinoSegmentedControl Demo
class _CupertinoSegmentedControlDemo extends StatefulWidget {
  @override
  State<_CupertinoSegmentedControlDemo> createState() =>
      _CupertinoSegmentedControlDemoState();
}

class _CupertinoSegmentedControlDemoState
    extends State<_CupertinoSegmentedControlDemo> {
  int _selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: CupertinoSegmentedControl<int>(
        groupValue: _selectedSegment,
        children: {
          0: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Option 1',
              style: TextStyle(
                fontSize: 12,
                color: CupertinoColors.label.resolveFrom(context),
              ),
            ),
          ),
          1: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Option 2',
              style: TextStyle(
                fontSize: 12,
                color: CupertinoColors.label.resolveFrom(context),
              ),
            ),
          ),
          2: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Option 3',
              style: TextStyle(
                fontSize: 12,
                color: CupertinoColors.label.resolveFrom(context),
              ),
            ),
          ),
        },
        onValueChanged: (value) {
          setState(() {
            _selectedSegment = value;
          });
        },
      ),
    );
  }
}


// AnimatedDefaultTextStyle Demo
class _AnimatedDefaultTextStyleDemo extends StatefulWidget {
  @override
  State<_AnimatedDefaultTextStyleDemo> createState() =>
      _AnimatedDefaultTextStyleDemoState();
}

class _AnimatedDefaultTextStyleDemoState
    extends State<_AnimatedDefaultTextStyleDemo> {
  bool _isBig = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _toggleSize();
    });
  }

  void _toggleSize() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _isBig = !_isBig;
        });
        _toggleSize();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 500),
      style: TextStyle(
        fontSize: _isBig ? 32 : 16,
        color: _isBig ? Colors.blue : Colors.red,
        fontWeight: FontWeight.bold,
      ),
      child: const Text('Animated'),
    );
  }
}

// Switch Demo
class _SwitchDemo extends StatefulWidget {
  @override
  State<_SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<_SwitchDemo> {
  bool _isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          _isEnabled ? 'ON' : 'OFF',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 12),
        Switch(
          value: _isEnabled,
          onChanged: (value) {
            setState(() {
              _isEnabled = value;
            });
          },
        ),
      ],
    );
  }
}

// ExpansionPanel Demo
class _ExpansionPanelDemo extends StatefulWidget {
  @override
  State<_ExpansionPanelDemo> createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<_ExpansionPanelDemo> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                'Panel Header',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 14,
                ),
              ),
            );
          },
          body: Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Panel content goes here',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 12,
              ),
            ),
          ),
          isExpanded: _isExpanded,
        ),
      ],
    );
  }
}

