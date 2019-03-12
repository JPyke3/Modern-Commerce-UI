import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  final Widget child;

  SignUp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Positioned(
            top: 36,
            left: 0,
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          Center(
              child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 30.0,
                                  spreadRadius: -35,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Center(
                                      child: Container(
                                          height: 20,
                                          width: width - 70,
                                          child: TextFormField(
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "E-Mail Address"),
                                          )),
                                    ),
                                  ),
                                  width: width,
                                  height: 60,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 30.0,
                                  spreadRadius: -35,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Center(
                                      child: Container(
                                          height: 20,
                                          width: width - 70,
                                          child: TextFormField(
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText: "Password"),
                                          )),
                                    ),
                                  ),
                                  width: width,
                                  height: 60,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 30.0,
                                  spreadRadius: -35,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Center(
                                      child: Container(
                                          height: 20,
                                          width: width - 70,
                                          child: TextFormField(
                                            decoration:
                                                InputDecoration.collapsed(
                                                    hintText:
                                                        "Password Verification"),
                                          )),
                                    ),
                                  ),
                                  width: width,
                                  height: 60,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Test");
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 30.0,
                                    spreadRadius: -35,
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35)),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      child: Center(
                                        child: Container(
                                            height: 20,
                                            width: width - 70,
                                            child: Center(
                                                child: Text("Submit",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16)))),
                                      ),
                                    ),
                                    width: width / 3,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).accentColor),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
