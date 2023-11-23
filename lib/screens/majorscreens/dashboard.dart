import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            )),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_home),
            label: "home",
            backgroundColor: Color(0xFFf54748),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search",
              backgroundColor: Colors.orangeAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "favorite",
              backgroundColor: Colors.orangeAccent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: "account",
              backgroundColor: Colors.orangeAccent),
        ],
      ),
    );
  }
}
    return const Placeholder();
  }
}
