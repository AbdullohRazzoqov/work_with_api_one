import 'package:flutter/material.dart';
import 'package:work_with_api_one/models/user_model.dart';
import 'package:work_with_api_one/service/user_service.dart';

class MainMedhod extends StatefulWidget {
  const MainMedhod({super.key});

  @override
  State<MainMedhod> createState() => _MainMedhodState();
}

class _MainMedhodState extends State<MainMedhod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: ServiceUser.getUser(),
          //? serviceUserdan nima return bo'lsa snapshotga kelib tushadi va snapshot datasini ekaranga bostirishimiz mumkin
          builder: ((context, AsyncSnapshot <List<UserModel>> snap) {
            //? uchta shart yozamaiz

            if (!snap.hasData) {
              //? Data kelmasa buni chiqar
              return const CircularProgressIndicator();
            } else if (snap.hasError) {
              //? Data bo'lmasa yoki boshqa xato bo'lsa buni ko'rsat
              return const Center(
                child: Text("Xato Bor"),
              );
            } else {
              //? Data kelganda buni ko'rsat
              return ListView.builder(itemCount: snap.data!.length,
                itemBuilder: (context, index) {
                  return Text(
                    "${snap.data![index].name}",
                  );
                },
              );
            }
          }),
        ),
      ),
    );
  }
}
