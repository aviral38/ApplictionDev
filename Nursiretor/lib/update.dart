import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
final _auth = FirebaseAuth.instance;
final User user = _auth.currentUser;
final ref=FirebaseDatabase.instance.reference();
class update extends ChangeNotifier{
  var mon="NA",tue="NA",wed="NA",thu="NA",fri="NA",sat="NA",sun="NA";
  var uid = user.uid;
  void up()
  {
    ref.child('Medi').child(uid).child('Monday').once().then((DataSnapshot dataSnapshot) {
      if(dataSnapshot.value!=null) {
        mon = dataSnapshot.value;
      }

    });
    ref.child('Medi').child(uid).child('Tuesday').once().then((DataSnapshot dataSnapshot) {
      if(dataSnapshot.value!=null) {
        tue = dataSnapshot.value;
      }

    });
    ref.child('Medi').child(uid).child('Wednesday').once().then((DataSnapshot dataSnapshot) {
      if(dataSnapshot.value!=null) {
        wed = dataSnapshot.value;
      }

    });
    ref.child('Medi').child(uid).child('Thursday').once().then((DataSnapshot dataSnapshot) {
      if(dataSnapshot.value!=null) {
        thu = dataSnapshot.value;
      }

    });
    ref.child('Medi').child(uid).child('Friday').once().then((DataSnapshot dataSnapshot) {
      if(dataSnapshot.value!=null) {
        fri = dataSnapshot.value;
      }

    });
    ref.child('Medi').child(uid).child('Saturday').once().then((DataSnapshot dataSnapshot) {
      if(dataSnapshot.value!=null) {
        sat = dataSnapshot.value;
      }

    });
    ref.child('Medi').child(uid).child('Sunday').once().then((DataSnapshot dataSnapshot) {
      if(dataSnapshot.value!=null)
      {
        sun=dataSnapshot.value;
      }

    });
    print('hell no');

    print(mon+" "+tue+" "+wed+thu+fri+sat+sun);
    notifyListeners();
    print('hell yes');
  }
  void notice()
  {
    notifyListeners();
  }
  String monday()
  {
    return mon;
  }

}