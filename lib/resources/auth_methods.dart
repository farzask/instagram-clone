// import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class FireBaseAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUp({
    required String email,
    required String fullName,
    required String userName,
    required String password,
    // required Uint8List file,
  }) async {
    String result = "Error occured";

    try {
      //creating the user
      if (email.isNotEmpty ||
          fullName.isNotEmpty ||
          userName.isNotEmpty ||
          password.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        //storing the data of user into database
        await _firestore
            .collection('userDetails')
            .doc(credential.user!.uid)
            .set({
          'username': userName,
          'uid': credential.user!.uid,
          'fullName': fullName,
          'email': email,
          'password': password,
          'bio': '',
          'followers': [],
          'following': [],
        });
        result = 'Account created successfully';
      } //end of if block
    } catch (e) {
      result = e.toString();
    }

    return result;
  }
}
