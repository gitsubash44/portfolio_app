import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchiev(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            type,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }

  mySpec(icon, tech) {
    return Container(
      width: 110,
      height: 120,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                tech,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: PopupMenuButton(
          icon: Icon(Icons.menu, color: Colors.white),
          color: Colors.black,
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                child: Text('Projects', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pushNamed(context, "projects");
                },
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: TextButton(
                child: Text(
                  'About Me',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "about");
                },
              ),
              value: 2,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 230),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/pho.png',
                    height: 500,
                    width: 367,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 300),
                child: Column(
                  children: [
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
                          color: Colors.white,
                          fontFamily: "Soho",
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiev("20", ' Project'),
                    myAchiev("15", ' Clints'),
                    myAchiev("42", ' Messages')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Specialized In',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.android, 'Android'),
                        mySpec(FontAwesomeIcons.aws, 'AWS'),
                        mySpec(FontAwesomeIcons.solidCircleUser, 'Networking'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.github, 'GitHub'),
                        mySpec(FontAwesomeIcons.linux, 'Linux'),
                        mySpec(FontAwesomeIcons.wordpress, 'WordPress'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.appStoreIos, 'iOS'),
                        mySpec(FontAwesomeIcons.terminal, 'Scripting'),
                        mySpec(FontAwesomeIcons.gamepad, 'Game Dev'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
