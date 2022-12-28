import 'package:flutter/material.dart';
import 'package:noteapp/utils/firebase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtnote = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: txtnote,
            ),
            ElevatedButton(
                onPressed: () {
                  insertdata(txtnote.text);
                },
                child: Text("ok"))
          ],
        ),
      ),
    );
  }
}
