import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void launchUrl(String url) async {
    await launch(url, forceSafariVC: false, forceWebView: false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(top: 25.0),
            child: Column(
              children: [
                Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                      image: AssetImage("images/profile.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Kushal Shrestha",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(30, 39, 73, 1),
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromRGBO(30, 39, 73, 1),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(30, 39, 73, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0))),
              padding: EdgeInsets.only(left: 25.0, top: 25.0, bottom: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact Me",
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.mail, size: 18.0, color: Colors.white),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "kushalshrestha85@gmail.com",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone, size: 18.0, color: Colors.white),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "9860168413",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Follow Me",
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                    onTap: () async {
                                      launchUrl(
                                          "https://www.instagram.com/kushal_shrestha85/");
                                    },
                                    child: Container(
                                      height: 75.0,
                                      width: 75.0,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "images/instagram.png"))),
                                    )),
                                InkWell(
                                    onTap: () async {
                                      launchUrl(
                                          "https://www.facebook.com/kushalShrestha85/");
                                    },
                                    child: Container(
                                      height: 75.0,
                                      width: 75.0,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "images/Facebook.png"))),
                                    )),
                                InkWell(
                                    onTap: () async {
                                      launchUrl(
                                          "https://twitter.com/KushalS54559648");
                                    },
                                    child: Container(
                                      height: 75.0,
                                      width: 75.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage("images/twitter.png"),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                    onTap: () async {
                                      launchUrl("https://github.com/kus413");
                                    },
                                    child: Container(
                                      height: 75.0,
                                      width: 75.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("images/github.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    )),
                                InkWell(
                                    onTap: () async {
                                      launchUrl(
                                          "https://www.linkedin.com/in/kushal-shrestha-2aa8b7187/");
                                    },
                                    child: Container(
                                      height: 75.0,
                                      width: 75.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "images/linkedIn.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    )),
                                InkWell(
                                  onTap: () async {
                                    launchUrl(
                                        "https://gitlab.com/shresthakushal");
                                  },
                                  child: Container(
                                    height: 75.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "images/gitlab.png"))),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
