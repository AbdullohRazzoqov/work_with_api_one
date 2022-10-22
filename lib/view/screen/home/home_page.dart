import 'package:flutter/material.dart';

//!api malumotlarini ekranga bostirish 3 ta yo'li tugmaga bosib orqali, initState ichida deytani olib qolib chiqarish, Future build orqali
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pages"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/press",
              );
            },
            child: const Text(
              "PressButton",
              style: TextStyle(fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/init");
            },
            child: const Text(
              "InitState",
              style: TextStyle(fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/main");
            },
            child: const Text(
              "InitState",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
