import 'package:cat_task2/screen2.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool oText = true;
  var formKey = GlobalKey<FormState>();
  var borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(100),
    borderSide: const BorderSide(
      color: Colors.orangeAccent,
      style: BorderStyle.solid,
      width: 2,
    ),
  );
  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sign in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  customTxtFF('Email', 'Enter your email', 'email',
                      Icons.email_outlined),
                  const SizedBox(
                    height: 50,
                  ),
                  customTxtFF(
                    'Password',
                    'Enter your password',
                    'password',
                    Icons.lock_outline_rounded,
                    oText ? Icons.visibility : Icons.visibility_off,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 100,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10.0),
                        primary: Colors.black,
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                        if (emailController.text == 'mohamed@yahoo.com' &&
                            passController.text == 'mohamed123') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Screen2(),
                            ),
                          );
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const AlertDialog(
                                    title: Text("Error"),
                                    titleTextStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                    backgroundColor: Colors.orangeAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    content:
                                        Text("Email or password is not valid"),
                                  ));
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  customTxtFF(lblTxt, hintTxt, str, icon, [sfxIcon]) => TextFormField(
        controller: str == 'email' ? emailController : passController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter some text';
          }
          return null;
        },
        decoration: InputDecoration(
          focusedErrorBorder: borderStyle,
          focusedBorder: borderStyle,
          enabledBorder: borderStyle,
          errorBorder: borderStyle,
          labelText: lblTxt,
          labelStyle:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              sfxIcon,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                oText = !oText;
              });
            },
          ),
          hintText: hintTxt,
        ),
        obscureText: str == 'password' ? oText : false,
      );
}
