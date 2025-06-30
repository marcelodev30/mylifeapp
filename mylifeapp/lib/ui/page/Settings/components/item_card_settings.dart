import 'package:flutter/material.dart';

class ItemCardSettings extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? trailing;
  final void Function()? onTap;
  const ItemCardSettings({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(right: 8, bottom: 16, left: 8),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, size: 20),
        title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
        trailing:
            trailing ??
            Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      ),
    );
  }
}
