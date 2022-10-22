import 'package:flutter/material.dart';
import 'package:work_with_api_one/service/user_service.dart';

class WithInitState extends StatefulWidget {
  const WithInitState({super.key});

  @override
  State<WithInitState> createState() => _WithInitStateState();
}

class _WithInitStateState extends State<WithInitState> {
  List listUser = [];
  //? initStateni async ishlata olmaymiz
  @override
  void initState() {
    super.initState();
    ServiceUser.getUser().then((value) {
      listUser = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Text("Work with API")),
      backgroundColor: Colors.cyan,
      body: Center(
        child: listUser.isEmpty
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey[50],
                    child: Text(
                      listUser[index]['name'],
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  );
                },
                itemCount: listUser.length,
              ),
      ),
    );
  }
}
