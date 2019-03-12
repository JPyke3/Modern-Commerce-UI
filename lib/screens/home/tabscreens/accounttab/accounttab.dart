import 'package:flutter/material.dart';

class AccountTab extends StatelessWidget {
  final Widget child;

  AccountTab({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sign Up For More Features!",
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "You are missing out on all these great features! Its recommended that you sign up in order to ensure you dont miss an update from us!",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/SignUp");
                  },
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Sign Up!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/SignIn");
                },
                child: Text("Or Perhaps You Already Have an Account?"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
