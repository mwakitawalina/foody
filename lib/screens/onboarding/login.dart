import 'package:flutter/material.dart';
//import 'package:foody/widgets/textbutton.dart';

import '../../widgets/button.dart';
import '../majorscreens/dashboard.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isEmailFocused = false;
  bool isPasswordFocused = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/images/bg.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image.asset(
                        "assets/images/land.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      cursorColor: const Color(0xFFf54748),
                      decoration: InputDecoration(
                          labelText: "Email",
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFf54748))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFf54748))),
                          labelStyle: TextStyle(
                            color: isEmailFocused
                                ? const Color(0xFFf54748)
                                : Colors.grey,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.7)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      cursorColor: const Color(0xFFf54748),
                      decoration: InputDecoration(
                          labelText: "Password",
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFf54748))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFf54748))),
                          labelStyle: TextStyle(
                            color: isPasswordFocused
                                ? const Color(0xFFf54748)
                                : Colors.grey,
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xFFf54748), width: 1.0),
                              borderRadius: BorderRadius.circular(10.0),
                              ),
                             
                            filled: true,
                            
                          fillColor: Colors.white.withOpacity(0.7)),
                    ),
                    

                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                        //title: "Submit",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dashboard()));
                        }, text: 'Submit',),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                    //     backgroundColor: const Color(0xFFf54748),
                    //     minimumSize: Size.fromHeight(50),
                       
                        
                    //   ),
                    //    child: Text("submit", 
                    //    style: TextStyle(color: Colors.white),),
                    //  ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
