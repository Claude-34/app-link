import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'social_mediaLinks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SlidderPage(),
    );
  }
}

class SlidderPage extends StatelessWidget {
  const SlidderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/images/img.png",
                fit: BoxFit.cover,
              )
              // SvgPicture.asset(
              //   "assets/images/img.svg",
              //   fit: BoxFit.cover,
              // )

              ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.4,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 30),
                child: Text(
                  "The world at \nyour fingers tips",
                  style: TextStyle(
                      fontSize: 35,
                      color: Color(0xffFFbf00),
                      fontWeight: FontWeight.w900),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 1.8,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 13),
                child: Text(
                  "Connect with everybody and \nanybody through us",
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, right: 8.0, left: 8.0),
            child: SlideAction(
              text: "Slide to unlock",
              textStyle: TextStyle(color: Color(0xff000000)),
              alignment: Alignment.bottomCenter,
              innerColor: Colors.black,
              outerColor: Colors.grey.shade200,
              sliderButtonIcon: const Icon(
                Icons.lock,
                color: Colors.white,
              ),
              submittedIcon: const Icon(
                Icons.done,
                color: Colors.green,
              ),
              animationDuration: const Duration(seconds: 1),
              onSubmit: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SocialMedia()));
              },
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
