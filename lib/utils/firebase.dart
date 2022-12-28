

import 'package:cloud_firestore/cloud_firestore.dart';



void insertdata(String note)
{
  FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;
  CollectionReference collectionReference = firebaseFirestore.collection("note");

  collectionReference.add({"note": "$note"}).then((value) => print("Success")).catchError((error) => print("$error"));
}





















