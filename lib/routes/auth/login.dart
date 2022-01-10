import 'package:flutter/gestures.dart';
import 'package:fintechinclusionproperties/imported_files.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static bool obscureState = true;

  String _email;
  String _password;
  RegExp regexpression = RegExp("^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]"
      "(?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*");
  String _errortxt = '';
  String _errorpasswordtxt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: theme.primColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 90,
                ),
                Container(
                  height: 380,
                  width: MediaQuery.of(context).size.width * 0.85,
//                  color: Colors.green,
                  child: Column(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              fontFamily: 'quicksand',
                              color: Colors.teal),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2)),
                        child: TextFormField(
                          onChanged: (email)
                              // ignore: missing_return
                              {
                            _onChangeEmail(email);
                          },
                          // ignore: missing_return
                          validator: (email) {
                            if (email.isEmpty) {
                              ///this returns red indicator line color for the username
                              ///field
                              return 'can not be empty';
                            }
                            if (!regexpression.hasMatch(email)) {
                              ///this change the color to error red color
                              return 'not an email';
                            }
                            // validator has to return something :)
                            return null;
                          },
                          autofocus: true,
                          enableSuggestions: false,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontFamily: 'Quicksand'),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                size: 20,
                              ),
                              labelText: 'email',
                              hintText: 'example@gmail.com',
                              hintStyle: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                  fontFamily: 'Quicksand'),
                              contentPadding: EdgeInsets.only(left: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2),
                              )),
                        ),
                      ),
//                                     SizedBox(
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2)),
                        child: TextFormField(
                          onChanged: _onChangePassword,
                          // ignore: missing_return
                          validator: (password) {
                            if (!password.isNotEmpty) {
                              return 'can not be empty';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontFamily: 'Quicksand'),
                          obscureText: obscureState,
                          showCursor: false,
                          decoration: InputDecoration(
                              prefixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      obscureState =
                                          obscureState == true ? false : true;
                                    });
                                  },
                                  child: Icon(
                                    Icons.lock_outline,
                                    size: 20,
                                  )),
                              labelText: 'password',
                              hintText: 'enter password',
                              hintStyle: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                  fontFamily: 'Quicksand'),
                              contentPadding: EdgeInsets.only(left: 10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ))),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          ///todo: the logic to authenticate
                          ///user comes here
                          // print('hi u typed: $user');
                          _validateForm();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primaryVariant,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.28),
                                  spreadRadius: 0.5,
                                  offset: Offset(2, 5),
                                  blurRadius: 12)
                            ],
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          height: 53.0,
                          width: 240.0,
                          child: Center(
                              child: Text(
                            'LogIn',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25.0),
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily: 'quicksand',
                              color: Apptheme.kTextColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  margin: EdgeInsets.only(top: 90),
                  width: MediaQuery.of(context).size.width * 0.8,
//                color: Colors.pinkAccent,
                  child: Column(
                    children: [
                      Divider(
                        thickness: 1,
                        height: 5,
                        color: Colors.indigo[900],
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 15),
                          child: RichText(
                            text: TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                    print('navigate to sign up screen');
                                  },
                                text: 'New here ?  ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'Sign Up ',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryVariant))
                                ]),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  _validateForm() {
    if (_formKey.currentState.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('hello'),
      ));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => HomePage()),
      );
    } else
      print('error');
  }

  _onChangeEmail(email) {
    if (regexpression.hasMatch(email)) {
      _errortxt = '';
      setState(() {});
    } else {
      print('not an email');
    }
  }

  _onChangePassword(password) {
    if (password.length >= 1) {
      _errorpasswordtxt = '';

      setState(() {});
    }
  }
}
