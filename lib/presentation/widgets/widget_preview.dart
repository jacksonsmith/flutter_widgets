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

      // Material Widgets
      case 'elevated_button':
        return ElevatedButton(
          onPressed: () {},
          child: const Text('Elevated Button'),
        );

      case 'text_button':
        return TextButton(
          onPressed: () {},
          child: const Text('Text Button'),
        );

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

      case 'floating_action_button':
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        );

      case 'icon_button':
        return IconButton(
          icon: const Icon(Icons.favorite),
          color: Colors.red,
          iconSize: 36,
          onPressed: () {},
        );

      // Input Widgets
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

      case 'switch':
        return Switch(
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

      // Scrolling Widgets
      case 'list_view':
        return SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text('List Item ${index + 1}'),
              subtitle: const Text('Subtitle'),
            ),
          ),
        );

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
        return SizedBox(
          height: 150,
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                10,
                (index) => Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  padding: const EdgeInsets.all(16),
                  color: Colors.blue[100 * ((index % 9) + 1)],
                  child: Text('Scrollable Item ${index + 1}'),
                ),
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

      // Animation Widgets
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

      // Cupertino Widgets
      case 'cupertino_button':
        return CupertinoButton(
          color: CupertinoColors.activeBlue,
          onPressed: () {},
          child: const Text('Cupertino Button'),
        );

      case 'cupertino_switch':
        return CupertinoSwitch(
          value: true,
          onChanged: (_) {},
        );

      case 'cupertino_slider':
        return SizedBox(
          width: 200,
          child: CupertinoSlider(
            value: 0.5,
            onChanged: (_) {},
          ),
        );

      case 'cupertino_activity_indicator':
        return const CupertinoActivityIndicator(radius: 20);

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
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<int>(value: 1),
          Text('Option 1'),
          SizedBox(width: 16),
          Radio<int>(value: 2),
          Text('Option 2'),
        ],
      ),
    );
  }
}
