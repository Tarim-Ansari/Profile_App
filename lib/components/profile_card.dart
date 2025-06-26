import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Stack(
                children: [
                  CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/v2/D5603AQGY6Zxjl5yELw/profile-displayphoto-shrink_200_200/B56Zab35_VHAAY-/0/1746371846881?e=2147483647&v=beta&t=4Ys1Dz8i54nOwSiY3TsLGrm4X9H6V_90fiL3okSge4c',
                ),
              ),
              Positioned(
                bottom: 0,
                right: 4,
                child: Icon(Icons.check_circle, color: Colors.blue,))
                ],
              ),
        SizedBox(height: 10),
        Text(
          "Hello, I'm Tarim!",
          style: TextStyle(
            fontFamily: 'Poppins', // 👈 use your custom font
            fontSize: 24,
            color: Colors.white,
          ),
        ),

        Text(
          "Flutter Developer | Student",
          style: TextStyle(
            fontSize: 14,
            color: const Color.fromARGB(255, 90, 90, 90),
          ),
        ),
        Divider(
          thickness: 1,
          indent: 40,
          endIndent: 40,
          color: const Color.fromARGB(255, 88, 88, 88),
        ),
      ],
    );
  }
}
