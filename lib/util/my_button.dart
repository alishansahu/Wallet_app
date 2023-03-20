import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final imageUrl;
  final buttonText;
  const MyButton({Key? key, this.imageUrl, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
    children: [
    Container(
    height: 90,
    padding: EdgeInsets.all(20),

    decoration: BoxDecoration(
    color: Colors.grey.shade100,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
    BoxShadow(
    color: Colors.grey.shade400,
    blurRadius: 20,
    spreadRadius: 10,
    )
    ]
    ),

    child: Center(
    child: Image.asset(imageUrl),
    )
    ),
    SizedBox(height: 12),
    Text(buttonText,style: TextStyle(color: Colors.grey.shade700,
  fontSize: 18,fontWeight: FontWeight.bold
  ),),
  ],
  );
  }
}
