import 'package:flutter/material.dart';
import 'package:foody/screens/onboarding/signup.dart';

class landing extends StatelessWidget {
  const landing ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 113, 25),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/landing.png",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to Foody App",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                "where your taste buds meet \n         our tasty food",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 90,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const signup()),
                    );
                  },
                  child: const Text(
                    "Let's go",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
