import 'package:flutter/material.dart';
import 'components/profile_card.dart';
// ignore: unused_import
import 'components/contact_tile.dart';
import 'contact_page.dart';
import 'contact_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.blue,
        fontFamily: 'Almarai',
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      title: "Tarim's Profile",
      routes: {
        '/contact': (context) => const ContactPage(),
        '/contactform': (context) => const ContactForm(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showMore = false;
  TextEditingController messageCntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 74, 135),
        centerTitle: true,
        title: Text("Profile", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileCard(),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 55, 55, 55),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Text(
                    'I love building mobile UIs and exploring Flutter.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              if (showMore)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'I am Tarim Ansari, a Computer Engineering student passionate about mobile app development and UI/UX design. Currently learning Flutter to build clean, efficient, and user-friendly applications. I enjoy turning ideas into digital experiences and continuously expanding my tech skillset. \nBeyond coding, I love reading tech blogs, editing videos, and playing badminton. I believe in learning by doing and always look forward to challenges that push me to grow both personally and professionally.',
                    textAlign: TextAlign.center,
                  ),
                ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showMore = !showMore;
                  });
                },
                child: Text(showMore ? 'Show Less' : 'Show More'),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Contact Details',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),

              /* ContactTile(
                icon: Icons.phone,
                title: 'Phone',
                subtitle: '+919209144144',
              ),
              ContactTile(
                icon: Icons.email,
                title: 'Email',
                subtitle: 'tarimansari2@gmail.com',
              ),
              ContactTile(
                icon: Icons.link,
                title: 'LinkedIn',
                subtitle: 'linkedin.com/in/tarim-ansari',
              ),
*/
              /*Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Write a message to Tarim',
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 67, 67, 67),
                      fontFamily: 'Poppins',
                    ),
                    hintText: 'Flutter Developer',
                    fillColor: const Color.fromARGB(255, 173, 173, 173),
                    filled: true,
                    prefixIcon: Icon(Icons.edit),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),*/
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("Edit button clicked!");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: TextField(
                  controller: messageCntrl,
                  decoration: InputDecoration(
                    labelText: 'Write a message to Tarim',
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 67, 67, 67),
                      fontFamily: 'Poppins',
                    ),
                    hintText: 'Your message here...',
                    fillColor: const Color.fromARGB(255, 173, 173, 173),
                    filled: true,
                    prefixIcon: Icon(Icons.edit),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("User Messge: ${messageCntrl.text}");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Message sent: ${messageCntrl.text}"),
                    ),
                  );
                },
                child: Text('Send Message'),
              ),

              SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contactform');
                },
                child: Text('Contact Form'),
              ),
              Row(children: [Text('Left'), Spacer(), Text('Right')]),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    messageCntrl.dispose();
    super.dispose();
  }
}
