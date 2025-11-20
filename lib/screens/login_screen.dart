import 'package:flutter/material.dart';
import 'package:flutter_activity_2/screens/bottom_nav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  String username = 'admin';
  String password = '123';

  //function to login
  void _signin() {
    if (_usernamecontroller.text == username &&
        _passwordcontroller.text == password) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNav()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text("invalid username"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.backpack_outlined, size: 90, color: Colors.green),
              SizedBox(height: 50),
              Text("Get your bags now at Nike"),
              SizedBox(height: 50),
              TextField(
                controller: _usernamecontroller,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25),
              TextField(
                controller: _passwordcontroller,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: _signin,
                child: Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "login",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
