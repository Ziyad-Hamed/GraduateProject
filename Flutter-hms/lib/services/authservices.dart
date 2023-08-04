import 'package:firebase_auth/firebase_auth.dart';
import 'package:hms/models/Fireuser.dart';
import 'package:hms/services/database.dart';



class Authservices{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String id;
  //firebase user
  FireUser _userFromFirebaseUser(User user) {
    if (user != null) {
      return FireUser(uid: user.uid);
    } else {
      return null;
    }
  }

  //signIn with email and password
  Future sginInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }


  // register with email and password
   Future registerWithEmailAndPassword(String username, String email, String id, String password, String phone,String age, ) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      await DatabaseService(uid:user.uid).updateUserData(username, email, id, password, phone, age);
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }
  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}