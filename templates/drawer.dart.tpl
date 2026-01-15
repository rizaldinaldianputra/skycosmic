import 'package:flutter/material.dart';

class {{ComponentName}} extends StatelessWidget {
  final String headerTitle;
  final String? headerSubtitle;
  final List<Widget> items;
  final Color? headerColor;

  const {{ComponentName}}({
    super.key,
    required this.headerTitle,
    this.headerSubtitle,
    required this.items,
    this.headerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: headerColor ?? Colors.blue,
            ),
            accountName: Text(
              headerTitle,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            accountEmail: headerSubtitle != null ? Text(headerSubtitle!) : null,
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                headerTitle.isNotEmpty ? headerTitle[0].toUpperCase() : 'A',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: headerColor ?? Colors.blue,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: items,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              // Handle logout
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
