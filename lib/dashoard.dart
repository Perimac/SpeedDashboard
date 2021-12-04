import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:speed_dashbaord/custom_card.dart';
import 'package:speed_dashbaord/last_records_card.dart';
import 'package:speed_dashbaord/total_balance_card.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.grey[200],
        leading: const Icon(Icons.menu,color: Colors.black),
        title:const Text("Dashboard",style:TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: const[
           IconButton(
            onPressed: null, 
            icon: Icon(Icons.notifications_outlined,color: Colors.black)
            )
        ],
      ),
      body: ListView(
        padding:const EdgeInsets.symmetric(vertical:15,horizontal:12),
        scrollDirection: Axis.vertical,
        children: [
           const Text("List of Account",style:TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color:Colors.black87)),
           const SizedBox(height: 5,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children:const[
               CustomCard(
               accountType: "Bank Account",
               amount: r'$2500.00',
               grColor3: Colors.deepPurple,
               grColor1: Colors.purple,
               grColor2: Colors.purpleAccent,
               ),
                 CustomCard(
               accountType: "Credit Card",
               amount: r'$1500.00',
               grColor3: Colors.red,
               grColor1: Colors.orange,
               grColor2: Colors.orangeAccent,
               ), CustomCard(
               accountType: "Cash",
               amount: r'$800.00',
               grColor3: Colors.green,
               grColor1: Colors.greenAccent,
               grColor2: Colors.greenAccent,
               ),
             ],
           ),
           const SizedBox(height: 15,),
           const TotalBalance(),
           const SizedBox(height: 15,),
           const Text("Last Records Overview",style:TextStyle(fontSize:22.0, fontWeight:FontWeight.bold,color: Colors.black87)),
           const SizedBox(height: 15,),
           Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
             children: const[
               LastRecords(
                 productIcon: Icons.shopping_cart_outlined,
                 gradientColor1: Colors.red,
                 gradientColor2: Colors.orange,
                 gradientColor3: Colors.orangeAccent,
                 productName: 'Groceries',
                 date: 'Today',
                 modeOfPayment: 'Credit Card',
                 amount: r'$2500.00',
                 amountColor: Colors.redAccent,
               ),
               SizedBox(height: 10,),
                LastRecords(
                 productIcon: Icons.person_outline,
                 gradientColor1: Colors.deepPurple,
                 gradientColor2: Colors.purple,
                 gradientColor3: Colors.purpleAccent,
                 productName: 'Clothes',
                 date: '01/04/2018',
                 modeOfPayment: 'Credit Card',
                 amount: r'$100.00',
                 amountColor: Colors.purpleAccent,
               ),
               SizedBox(height:10),
               LastRecords(
                 productIcon: Icons.house_outlined,
                 gradientColor1: Colors.green,
                 gradientColor2: Colors.greenAccent,
                 gradientColor3: Colors.greenAccent,
                 productName: 'Rentals',
                 date: '01/03/2012',
                 modeOfPayment: 'Cash',
                 amount: r'$400.00',
                 amountColor: Colors.greenAccent,
               ),
             ]
           )

        ],
      ),
    );
  }
}