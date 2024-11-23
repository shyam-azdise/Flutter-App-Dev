import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:maamedicos/constants/constants.dart';

class AuthController extends GetxController{

  Future<UserCredential?> loginMethod({email, password, context}) async{
    UserCredential? userCredential;

    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg:e.toString());
    }
    return userCredential;
  }

  // SignUp Method
  Future<UserCredential?> signupMethod({email, password, context}) async{
    UserCredential? userCredential;

    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg:e.toString());
    }
    return userCredential;
  }

  // Storing Data Methos

  storingUserData(name, email, password) async {
    DocumentReference store = firestore.collection(userCollection).doc(currentUser!.uid);
    store.set({
      'name': name,
      'email': email,
      'password': password,
      'imageUrl': '',
      'phone': '',
      'country': '',
      'city': '',
      'pin': '',
      'address': '',
    }
    );
  }

  // SignOut Method

  signoutMethod(context) async{
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}