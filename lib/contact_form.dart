import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formkey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  void submitForm() {
    if (_formkey.currentState!.validate()) {
      ScaffoldMessenger.of(
      context,
      ).showSnackBar(SnackBar(content: Text('Your form submitted')));

      nameController.clear();
      emailController.clear();
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Form')),
      body: Form(
        key: _formkey,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                // ignore: avoid_print
                return 'Please enter your name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                // ignore: avoid_print
                return 'Please enter your email';
              }
              return null;
            },
          ),
          TextFormField(
            controller: messageController,
            decoration: InputDecoration(labelText: 'Message'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                // ignore: avoid_print
                return 'Please enter your message';
              }
              return null;
            },
          ),

          SizedBox(height: 20,),

          ElevatedButton(
            onPressed: submitForm, child: Text('Submit')),

          
        ],
      ),)
    );
  }
}
