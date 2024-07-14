import 'package:e_com_ui/components/my_button.dart';
import 'package:e_com_ui/pages/login_page.dart';
import 'package:e_com_ui/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/splash_screen.png",
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 30,
              ),

              //login button
              MyButton(
                  text: "Login",
                  boxColor: Colors.white,
                  textColor: Colors.black,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
              const SizedBox(height: 20),

              //signup button
              MyButton(
                  text: "Sign Up",
                  boxColor: Colors.transparent,
                  buttonBorder: Border.all(color: Colors.white),
                  textColor: Colors.white,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  })
            ],
          ),
        )
      ],
    ));
  }
}
