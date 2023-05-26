import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_outfit/src/myflutter.dart';

import '../res/contextual_list.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _authentication = FirebaseAuth.instance;
  bool isSignupScreen = true;
  final _formKey = GlobalKey<FormState>();
  String userName = '';
  String userEmail = '';
  String userPassword = '';

  void _tryValidation() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 228, 199),
        foregroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          '오늘 뭐 입지?',
          style: TextStyle(fontSize: 14),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              height: isSignupScreen ? 250 : 330,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: !isSignupScreen
                                    ? Color.fromARGB(255, 166, 166, 166)
                                    : Colors.black,
                              ),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'SIGNUP',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isSignupScreen
                                    ? Color.fromARGB(255, 166, 166, 166)
                                    : Colors.black,
                              ),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (isSignupScreen)
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              key: ValueKey(1),
                              validator: (value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return 'Please enter at least 4 charactor';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                userEmail = value!;
                              },
                              onChanged: (value) {
                                userEmail = value;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color.fromARGB(255, 166, 166, 166),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 166, 166),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 166, 166),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                hintText: 'email',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color.fromARGB(255, 166, 166, 166),
                                ),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              obscureText: true,
                              key: ValueKey(2),
                              validator: (value) {
                                if (value!.isEmpty || value.length < 6) {
                                  return 'Please enter at least 4 charactor';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                userPassword = value!;
                              },
                              onChanged: (value) {
                                userPassword = value;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color.fromARGB(255, 166, 166, 166),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 166, 166),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 166, 166),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                hintText: 'password',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color.fromARGB(255, 166, 166, 166),
                                ),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (!isSignupScreen)
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              key: ValueKey(3),
                              validator: (value) {
                                if (value!.isEmpty || value.length < 4) {
                                  return 'Please enter at least 4 charactor';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                userName = value!;
                              },
                              onChanged: (value) {
                                userName = value;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Color.fromARGB(255, 166, 166, 166),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 166, 166),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 166, 166),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                hintText: 'User name',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color.fromARGB(255, 166, 166, 166),
                                ),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              key: ValueKey(4),
                              validator: (value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return 'Please enter at least 4 charactor';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                userEmail = value!;
                              },
                              onChanged: (value) {
                                userEmail = value;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color.fromARGB(255, 166, 166, 166),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 166, 166),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 166, 166),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                hintText: 'email',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color.fromARGB(255, 166, 166, 166),
                                ),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              obscureText: true,
                              key: ValueKey(5),
                              validator: (value) {
                                if (value!.isEmpty || value.length < 6) {
                                  return 'Please enter at least 4 charactor';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                userPassword = value!;
                              },
                              onChanged: (value) {
                                userPassword = value;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color.fromARGB(255, 166, 166, 166),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 166, 166),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 166, 166),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                hintText: 'password',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color:
                                      const Color.fromARGB(255, 166, 166, 166),
                                ),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                if (!isSignupScreen) {
                  _tryValidation();

                  try {
                    final newUser =
                        await _authentication.createUserWithEmailAndPassword(
                            email: userEmail, password: userPassword);

                    if (newUser.user != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return myflutter();
                        }),
                      );
                    }
                  } catch (e) {
                    print(e);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please check your email and password'),
                      ),
                    );
                  }
                }
                if (isSignupScreen) {
                  _authentication;

                  try {
                    final newUser =
                        await _authentication.signInWithEmailAndPassword(
                            email: userEmail, password: userPassword);
                    if (newUser.user != null) {
                      ContextualList.isLoggedIn = true;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return myflutter();
                          },
                        ),
                      );
                    }
                  } catch (e) {
                    print(e);
                  }
                }
              },
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
