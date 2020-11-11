import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_test/authentication/authentication_controller.dart';


class UserHome extends StatefulWidget {
  String username;

  UserHome({this.username});

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  FirebaseAuthenticationController auth_controller = FirebaseAuthenticationController();

  @override
  void initState() {

    Future.delayed(Duration.zero, () {
      _howDialogLogin(context);
      _saveUserName(context);
    });

    super.initState();
  }



  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }


  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(title: Text("Welcome ${widget.username}"),),
        body: Container(
          color: Colors.white,
        ),
      ),
    );
  }


  _howDialogLogin(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 8,
              ),
              Text("Login..."),
            ],
          ),
        );
      },
    );
  }

  _saveUserName(BuildContext context)
  async
  {

    User user = await auth_controller.getCurrentUser();
    if(user !=null)
    {
      FirebaseFirestore.instance.collection("Users").doc().set({
        'uid' : user.uid,
        'username': widget.username,
        'email_login': user.email,
      }).then((value) {
        Navigator.pop(context);
      });
    }


  }
}







