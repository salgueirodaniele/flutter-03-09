import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        spacing: 30,
        children: [
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/');
            },
            child: Text('PAGE LIST-VIEW'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/grid');
            },
            child: Text('PAGE GRID-VIEW'),
          ),
        ],
      ),
    );
  }
}
