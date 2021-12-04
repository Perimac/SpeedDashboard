import 'package:flutter/material.dart';

class TotalBalance extends StatelessWidget {
  const TotalBalance({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
         Container(
          width: MediaQuery.of(context).size.width * 0.83,
          height: 130,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white54
          ),
        ),
        Container(
          width: double.infinity,
          height: 120,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Text(r"$4800.00",style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 45.0
              ),),
              Text("Total Balance",style:TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ))
            ],
          ),
        )
      ],
      
    );
  }
}