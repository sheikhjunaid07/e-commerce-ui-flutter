import 'package:e_com_ui/components/my_button.dart';
import 'package:e_com_ui/pages/categories/category_page.dart';
import 'package:flutter/material.dart';

class SuccessfullyRegisteredPage extends StatelessWidget {
  const SuccessfullyRegisteredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 200.0, bottom: 20, right: 10, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset('assets/images/check_logo.png',
                    width: 100, height: 100),
                const SizedBox(height: 20),
                const Text("Successfull!!",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("""You have successfully registered in our
        app and start working on it..""",
                      style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                )
              ],
            ),
            MyButton(
                text: "Start Shopping",
                boxColor: Colors.black,
                textColor: Colors.white,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryPage()));
                })
          ],
        ),
      ),
    );
  }
}
