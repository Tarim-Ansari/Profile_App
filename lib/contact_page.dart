import 'package:flutter/material.dart';
import 'package:myapp/components/contact_tile.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Details"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContactTile(
              icon: Icons.phone,
              title: "Phone",
              subtitle: "+919209144144",
            ),
            ContactTile(
              icon: Icons.email,
              title: "Email",
              subtitle: "john.c.calhoun@examplepetstore.com",
            ),
            ContactTile(
              icon: Icons.link,
              title: "LinkedIn",
              subtitle: "linkedin.com/in/tarim-ansari",
            ),
          ],
        ),
      ),
    );
  }
}
