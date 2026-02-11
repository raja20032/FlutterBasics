import 'package:flutter/material.dart';
import 'widgets/column_row_demo.dart';
import 'widgets/stack_demo.dart';
import 'widgets/gesture_detector_demo.dart';
import 'widgets/image_demo.dart';
import 'widgets/visibility_scrollview_demo.dart';
import 'widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const WidgetDemoPage(),
    );
  }
}

class WidgetDemoPage extends StatefulWidget {
  const WidgetDemoPage({super.key});

  @override
  State<WidgetDemoPage> createState() => _WidgetDemoPageState();
}

class _WidgetDemoPageState extends State<WidgetDemoPage> {
  // Current tab index (0-4 for 5 tabs)
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _buildTabContent(),
      bottomNavigationBar: _buildTabButtons(),
    );
  }

  // Build the content for the current tab
  Widget _buildTabContent() {
    switch (_currentTab) {
      case 0:
        return const ColumnRowDemo();
      case 1:
        return const StackDemo();
      case 2:
        return const GestureDetectorDemo();
      case 3:
        return const ImageDemo();
      case 4:
        return const VisibilityScrollViewDemo();
      default:
        return const ColumnRowDemo();
    }
  }

  // Tab navigation buttons at the bottom
  Widget _buildTabButtons() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTabButton('Column/Row', 0, Icons.view_column),
          _buildTabButton('Stack', 1, Icons.layers),
          _buildTabButton('Gesture', 2, Icons.touch_app),
          _buildTabButton('Image', 3, Icons.image),
          _buildTabButton('Visibility/Scroll', 4, Icons.visibility),
        ],
      ),
    );
  }

  // Individual tab button
  Widget _buildTabButton(String label, int index, IconData icon) {
    final isSelected = _currentTab == index;
    return DemoBottomTabButton(
      label: label,
      icon: icon,
      isSelected: isSelected,
      onTap: () {
        setState(() {
          _currentTab = index;
        });
      },
    );
  }
}
