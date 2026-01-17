import 'package:flutter/material.dart';

class SkyCosmic{{ComponentName}} extends StatelessWidget {
  final String headerTitle;
  final String? headerSubtitle;
  final List<Widget> items;
  final bool enableGradient;
  final Color? headerColor;

  const SkyCosmic{{ComponentName}}({
    super.key,
    required this.headerTitle,
    this.headerSubtitle,
    required this.items,
    this.enableGradient = true,
    this.headerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: enableGradient
                  ? const LinearGradient(
                      colors: [Color(0xFF2193b0), Color(0xFF6dd5ed)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  : null,
              color: enableGradient ? null : (headerColor ?? Colors.blue),
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
                  color: headerColor ?? const Color(0xFF2193b0),
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
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
