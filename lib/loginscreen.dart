import 'package:flutter/material.dart';
import 'package:secondproject/homescreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Login Screen'),
        centerTitle: true,
        leading: Icon(
          Icons.login,
          size: 30,
        ),
      ),
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(),
              color: Colors.white,
            ),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Entre Email',
                hintStyle: TextStyle(color: Colors.grey)
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(),
              color: Colors.white,
            ),
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: 'Enter Password',
                hintStyle: TextStyle(color: Colors.grey)
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white60),
            child: TextButton(
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              onPressed: () {
                String email, password;
                email = emailController.text;
                password = passwordController.text;
                if (email == 'developer@gmail.com') {
                  if (password == '321') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homescreen()));
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
