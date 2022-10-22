import 'package:flutter/material.dart';
import 'package:work_with_api_one/service/user_service.dart';

class PressButton extends StatefulWidget {
  const PressButton({super.key});

  @override
  State<PressButton> createState() => _PressButtonState();
}

class _PressButtonState extends State<PressButton> {
  List listUser = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Text("Work with API")),
      backgroundColor: Colors.cyan,
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                color: Colors.grey,
                child: Text(
                  listUser[index]['name'],
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ));
          },
          itemCount: listUser.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          listUser = await ServiceUser.getUser();
          setState(() {});
        },
        child: const Icon(Icons.flutter_dash),
      ),
    );
  }
}
