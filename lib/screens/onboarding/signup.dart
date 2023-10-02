import 'package:flutter/material.dart';
import 'package:foody/screens/majorscreens/dashboard.dart';
//import 'package:foody/widgets/textbutton.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Signup", ),backgroundColor: Colors.white, centerTitle: true),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: SignupForm(),
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height *0.25,
          child: Image.asset("assets/images/land.png",
          fit: BoxFit.cover,),
        ),
      
      Padding(padding: const EdgeInsets.all(20),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TextField(
            decoration: InputDecoration(
                labelText: "First Name", border: OutlineInputBorder()),
          ),
          const SizedBox(height: 5,),
          const TextField(
            decoration: InputDecoration(
                labelText: "Last Name", border: OutlineInputBorder()),
          ),
           const SizedBox(height: 5,),
          const TextField(
            decoration: InputDecoration(
                labelText: "Email Address", border: OutlineInputBorder()),
          ),
           const SizedBox(height: 5,),
          const TextField(
            decoration: InputDecoration(
                labelText: "Phone number", border: OutlineInputBorder()),
          ),
           const SizedBox(height: 5,),
          const TextField(
            decoration: InputDecoration(
                labelText: "Password", border: OutlineInputBorder()),
            obscureText: true,
            
          ),
         
          
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const Dashboard())));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                        backgroundColor: const Color(0xFFf54748),
                        minimumSize: const Size.fromHeight(60)
                        //minimumSize: const Size(180, 30),
                          ),
                      child: const Text('Signup',
                      style: TextStyle(color: Colors.white),),
                    ),
          // CustomButton(title: "Sign up", onPressed: () {}),
        ],
      ),
    )],);
  }
}
