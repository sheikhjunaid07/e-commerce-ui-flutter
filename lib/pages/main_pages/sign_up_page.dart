import 'package:e_com_ui/components/my_button.dart';
import 'package:e_com_ui/components/my_text_field.dart';
import 'package:e_com_ui/pages/main_pages/successfully_registered_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //logo
            Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/logo.png')),
            const SizedBox(height: 30),

            //signUp message
            const Text("Sign Up!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text("Create a new account",
                style: TextStyle(color: Colors.grey, fontSize: 16)),
            const SizedBox(height: 20),

            //username text field
            MyTextField(
                labelText: "User Name",
                controller: usernameController,
                obsecureText: false),

            const SizedBox(height: 10),

            //email text field
            MyTextField(
                labelText: "Email",
                controller: emailController,
                obsecureText: false),

            const SizedBox(height: 10),

            //password text field
            MyTextField(
                labelText: "Password",
                controller: passwordController,
                obsecureText: true),

            const SizedBox(height: 10),

            //confirm password text field
            MyTextField(
                labelText: "Confirm Password",
                controller: confirmPasswordController,
                obsecureText: true),

            const SizedBox(height: 10),

            //for checkbox
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //checkbox
                Checkbox(
                    value: isChecked,
                    activeColor: Colors.blueAccent,
                    tristate: true,
                    onChanged: (newState) {
                      setState(() {
                        isChecked = newState;
                      });
                    }),

                //terms and conditions
                Text(
                  """By creating an account you have to agree 
with our terms & conditions. """,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),

            const SizedBox(height: 40),

            //signUp button
            MyButton(
                text: "Sign Up",
                boxColor: Colors.black,
                textColor: Colors.white,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SuccessfullyRegisteredPage()));
                })
          ],
        ),
      )),
    );
  }
}
