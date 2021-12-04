import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String accountType;
  final String amount;
  final Color grColor1;
  final Color grColor2;
  final Color grColor3;

  const CustomCard({ Key? key,
  required this.accountType,
  required this.amount,
  required this.grColor1,
  required this.grColor2,
  required this.grColor3,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width * 0.30,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          colors: [
            grColor3,
            grColor1,
            grColor2,
          ]
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(accountType,style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:17,
              color: Colors.white70,
            ),),
            Text(amount,style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
              color: Colors.white
            ),),
          ]
        ),
      ),
    );
  }
}