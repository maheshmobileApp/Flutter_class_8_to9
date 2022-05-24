import 'package:flutter/material.dart';

class Firstsreen extends StatefulWidget {
  Firstsreen({Key? key}) : super(key: key);

  @override
  State<Firstsreen> createState() => _FirstsreenState();
}

class _FirstsreenState extends State<Firstsreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("textfields")),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter User Name", border: OutlineInputBorder()),
                // maxLines: 5,
                // obscureText: true,
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
                keyboardType: TextInputType.name,
                controller: _nameController,
                onChanged: (value) {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter Value";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter User Email", border: OutlineInputBorder()),
                // maxLines: 5,
                // obscureText: true,
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
                keyboardType: TextInputType.name,
                controller: _emailController,
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter User Password",
                    border: OutlineInputBorder()),
                // maxLines: 5,
                // obscureText: true,
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
                keyboardType: TextInputType.name,
                controller: _passwordController,
                onChanged: (value) {},
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/counter",
                      arguments: {"key": "test arugment value"});
                  // final isValid = _formKey.currentState?.validate()
                  // ;
                  //1->2->3
                },
                child: Text("Submit"))
          ]),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _controller.text = "Hello";

    // _controller.addListener(() {
    //   print(_controller.text);
    // });
  }
}

/*
TEXT
TextButton
TextFiled
TextFormFiled
TextEditController

sholdcharacter


TASK:

Name : min 4 max 10
Email : email validation (10,one upper,special,lower,digits,min 6 characters)
password: password validation
phone : phone validation
confirm password: 

StateFull :  mutable 
StateLess : immutable 

Counter App

counter = 0;
+ -> counter ++

- -> counter --


Text("$counter")




 */
