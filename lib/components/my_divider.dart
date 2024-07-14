import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Divider(
      color: Colors.grey,
      height: 2,
      thickness: 0.5,
    ));
  }
}
