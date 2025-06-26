import 'package:flutter/material.dart';
import 'components/profile_card.dart';
import 'components/contact_tile.dart';


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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 2,
                    )]
                  ),
                  child: Text('I am Tarim Ansari, a Computer Engineering student passionate about mobile app development and UI/UX design. Currently learning Flutter to build clean, efficient, and user-friendly applications. I enjoy turning ideas into digital experiences and continuously \n expanding my tech skillset',
                  textAlign: TextAlign.center,),
                )
              ),

              ContactTile(icon: Icons.phone, title: 'Phone', subtitle: '+919209144144'),
              ContactTile(icon: Icons.email, title: 'Email', subtitle: 'tarimansari2@gmail.com'),
              ContactTile(icon: Icons.link, title: 'LinkedIn', subtitle: 'linkedin.com/in/tarim-ansari'),
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Your Bio',
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
              ),
              SizedBox(
                height: 20,
              ),
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
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
              Row(
                children: [
                  Text('Left'),
                  Spacer(),
                  Text('Right')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
