import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ContactTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 43, 43, 43),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title, style: TextStyle(color: Colors.white)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.white)),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
