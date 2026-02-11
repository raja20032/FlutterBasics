import 'package:flutter/material.dart';
import 'widgets.dart';

/// Column and Row Widget Demo
/// Column arranges widgets vertically, Row arranges widgets horizontally
class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DemoPageTitle(text: 'Column & Row Widgets Demo'),
          const SizedBox(height: 30),

          // Column Section
          const DemoSectionTitle(text: 'Column Widget - Vertical Layout'),
          const SizedBox(height: 10),
          const DemoDescriptionText(
            text: 'Column arranges widgets vertically (top to bottom):',
          ),
          const SizedBox(height: 20),
          // Example boxes arranged vertically
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DemoColorBox(
                label: 'Box 1',
                backgroundColor: Colors.red,
              ),
              const SizedBox(height: 10),
              const DemoColorBox(
                label: 'Box 2',
                backgroundColor: Colors.green,
              ),
              const SizedBox(height: 10),
              const DemoColorBox(
                label: 'Box 3',
                backgroundColor: Colors.blue,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const DemoHintText(
            text: 'These boxes are arranged in a Column',
          ),

          const SizedBox(height: 50),

          // Row Section
          const DemoSectionTitle(text: 'Row Widget - Horizontal Layout'),
          const SizedBox(height: 10),
          const DemoDescriptionText(
            text: 'Row arranges widgets horizontally (left to right):',
          ),
          const SizedBox(height: 20),
          // Example boxes arranged horizontally
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DemoColorBox(
                label: '1',
                backgroundColor: Colors.purple,
                width: 80,
                height: 80,
                fontSize: 20,
              ),
              const SizedBox(width: 10),
              const DemoColorBox(
                label: '2',
                backgroundColor: Colors.orange,
                width: 80,
                height: 80,
                fontSize: 20,
              ),
              const SizedBox(width: 10),
              const DemoColorBox(
                label: '3',
                backgroundColor: Colors.teal,
                width: 80,
                height: 80,
                fontSize: 20,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const DemoHintText(
            text: 'These boxes are arranged in a Row',
          ),

          const SizedBox(height: 40),

          // Nested example: Row inside Column
          const DemoSectionTitle(text: 'Nested Layout Example:'),
          const SizedBox(height: 10),
          const DemoDescriptionText(
            text: 'Row containing Columns (combining both widgets):',
            fontSize: 14,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const DemoColorBox(
                    label: '',
                    backgroundColor: Colors.red,
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 5),
                  const Text('Red'),
                ],
              ),
              Column(
                children: [
                  const DemoColorBox(
                    label: '',
                    backgroundColor: Colors.green,
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 5),
                  const Text('Green'),
                ],
              ),
              Column(
                children: [
                  const DemoColorBox(
                    label: '',
                    backgroundColor: Colors.blue,
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 5),
                  const Text('Blue'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const DemoHintText(
            text: 'Key: Column = Vertical, Row = Horizontal',
          ),
        ],
      ),
    );
  }
}
