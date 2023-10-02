import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:foody/screens/majorscreens/dashboard.dart';
import 'package:foody/screens/onboarding/login.dart';
import 'package:foody/screens/onboarding/signup.dart';

import '../../widgets/button.dart';


class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(20, 0),
            child: AppBar(
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_forward))
              ],
            )),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Image.asset(
              "assets/images/bg.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: Image.asset("assets/images/land.png",
                        fit: BoxFit.cover),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Welcome to Foody App",
                    style: TextStyle(
                        //fontFamily: Poppins,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "where your taste buds meet \n         our tasty food",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  
                    // CustomButton(
                    //   text: "Set Delivery Location",
                    //   onPressed: () {
                    //     Navigator.push(context,
                    //         MaterialPageRoute(builder: (context) => const signup()));
                    //   },
                    //   ),
                       OutlinedButton(
                    onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => const Dashboard()));
                   },
                    style: OutlinedButton.styleFrom(
                     side: const BorderSide(color: Color(0xFFf54748)),
                     backgroundColor:
                       const Color.fromARGB(255, 255, 252, 252),
                        minimumSize: const Size(210, 45)),
                     child: const Text(
                       'Set Delivery Location',
                      style: TextStyle(
                        color: Color(0xFFf54748),
                    ),
                    ),
                   ),
                    // child: ElevatedButton(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //       backgroundColor: const Color(0xFFf54748),
                    //       minimumSize: const Size(180, 30)),
                    //   child: const Text('Set Delivery Location'),
                    // ),
                  
                  const SizedBox(height: 10),
                  CustomButton(
                      text: "Signup",
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const signup()));
                      }, ),
                  //  OutlinedButton(
                  //   onPressed: () {
                  //    Navigator.push(
                  //        context,
                  //        MaterialPageRoute(
                  //            builder: (context) => const signup()));
                  //  },
                  //   style: OutlinedButton.styleFrom(
                  //    side: const BorderSide(color: Color(0xFFf54748)),
                  //    backgroundColor:
                  //            const Color.fromARGB(255, 255, 252, 252),
                  //       minimumSize: const Size(180, 30)),
                  //    child: const Text(
                  //      'Sign Up',
                  //     style: TextStyle(
                  //       color: Color(0xFFf54748),
                  //   ),
                  //   ),
                  //  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Have an account? ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              decoration: TextDecoration.none),
                        ),
                        TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFf54748),
                                decoration: TextDecoration.none),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const login()));
                              }),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
