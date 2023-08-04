import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

final String uid;
DatabaseService({this.uid});

  // collection reference
  final CollectionReference hmscollection = FirebaseFirestore.instance.collection('Users');
  Future<void> updateUserData(String username,String email,String id,String password,String phone,String age, )async{
    return await hmscollection.doc(uid).set(
      {
        'username': username,
        'email': email,
        'id': id,
        'password':password,
        'phone': phone,
        'age':age,
      });
  }
  // get hms stream
  Stream<QuerySnapshot> get hms{
    return hmscollection.snapshots();
  }
}