import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 260),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/pro.png',
                  height: 500,
                  width: 400,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 300),
              child: Column(
                children: [
                  Text(
                    'Hello, I am',
                    style: TextStyle(
                      fontFamily: "Soho",
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 26,
                    ),
                  ),
                  Text('Subash Dhami',
                      style: TextStyle(
                          fontFamily: "Soho",
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Soho", fontSize: 20),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: 200, // Set the desired width here
                    child: TextButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        backgroundColor: Colors.white,
                        // Set the button background color
                      ),
                      child: Text(
                        'Hire Me',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: "Soho", // Set the text color
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.linkedin,
                            color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.facebook,
                            color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:
                            Icon(FontAwesomeIcons.github, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:
                            Icon(FontAwesomeIcons.twitter, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
