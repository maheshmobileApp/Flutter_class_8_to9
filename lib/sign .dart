import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/food.jpg"), fit: BoxFit.cover)
            // gradient: LinearGradient(colors: [Colors.red,Colors.pink
            // ]
            // )
            ),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 105, 104, 104),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          "create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      UsernameTextfield(),
                      EmailTextField(),
                      PasswordTextfield(),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Have an account?"),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Signin",
                                style: TextStyle(
                                    color: Colors.pink, fontSize: 15),
                              ))
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget UsernameTextfield() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        child: TextFormField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              labelStyle: TextStyle(color: Colors.white),
              label: Text(
                "username",
                style: TextStyle(color: Colors.white),
              ),
              border: OutlineInputBorder()),
        ),
      ),
    );
  }

  Widget EmailTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        child: TextFormField(
          decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.white),
              label: Text(
                "Email",
                style: TextStyle(color: Colors.white),
              ),
              border: OutlineInputBorder()),
        ),
      ),
    );
  }

  Widget PasswordTextfield() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        child: TextFormField(
          decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.white),
              label: Text("password", style: TextStyle(color: Colors.white)),
              border: OutlineInputBorder()),
        ),
      ),
    );
  }
}
