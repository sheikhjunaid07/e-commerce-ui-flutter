import 'package:e_com_ui/components/MyButton.dart';
import 'package:e_com_ui/components/MyDivider.dart';
import 'package:e_com_ui/components/MyTextField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //logo
              Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/logo.png")),

              const SizedBox(height: 20),

              Text("Welcome!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text("Please login or signup to continue our app",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  )),

              const SizedBox(height: 20),

              //email field
              MyTextField(
                  labelText: "Email",
                  controller: emailController,
                  obsecureText: false),

              //password field
              MyTextField(
                  labelText: "Password",
                  controller: passwordController,
                  obsecureText: true),

              const SizedBox(height: 30),

              //login button
              MyButton(
                  text: "Login",
                  boxColor: Colors.black,
                  textColor: Colors.white,
                  onTap: () {}),

              const SizedBox(height: 10),

              //divider row
              Row(
                children: [MyDivider(), Text("or"), MyDivider()],
              ),

              const SizedBox(height: 10),

              //continue with facebook
              MyButton(text: "Continue with Facebook", boxColor: Color.fromRGBO(7, 102, 178, 100), textColor: Colors.white, onTap: (){}),

              const SizedBox(height: 20),

              //continue with google
              MyButton(text: "Continue with Google", boxColor: Colors.transparent, textColor: Colors.blueGrey, buttonBorder: Border.all(color: Colors.grey), onTap: (){}),

              const SizedBox(height: 20),

              //continue with apple
              MyButton(text: "Continue with Apple", boxColor: Colors.transparent, textColor: Colors.blueGrey, buttonBorder: Border.all(color: Colors.grey), onTap: (){}),

            ],
          ),
        ),
      ),
    );
  }
}
