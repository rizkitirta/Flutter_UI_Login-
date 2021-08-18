import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  // runApp(App());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(App());
  });
}

class App extends StatelessWidget {
  // const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  // const MainPage({ Key? key }) : super(key: key)
  double smallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double bigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Positioned(
            top: -smallDiameter(context) / 3,
            right: -smallDiameter(context) / 3,
            child: Container(
              width: smallDiameter(context),
              height: smallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Colors.purple,
                    Colors.orange.shade800,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            top: -bigDiameter(context) / 4,
            left: -bigDiameter(context) / 4,
            child: Container(
              child: Center(
                  child: Text(
                "Hello People",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
              width: bigDiameter(context),
              height: bigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Colors.purple.shade500,
                    Colors.orange.shade800,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            bottom: -bigDiameter(context) / 2,
            right: -bigDiameter(context) / 2,
            child: Container(
              width: bigDiameter(context),
              height: bigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Colors.purple.shade100,
                    Colors.orange.shade200,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.orange,
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.orange),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade700))),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Colors.orange,
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.orange),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade700))),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.orange),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                            child: Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(20),
                                child: Center(
                                  child: Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.orange.shade700,
                                      Colors.purple.shade500
                                    ]))),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        child: Icon(
                          Icons.facebook,
                          size: 25,
                        ),
                        mini: true,
                        backgroundColor: Colors.blue,
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 25,
                        ),
                        mini: true,
                        backgroundColor: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont Help An Account  ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "SIGNUP?",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
