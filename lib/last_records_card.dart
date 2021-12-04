import 'package:flutter/material.dart';

class LastRecords extends StatelessWidget {
  final IconData productIcon;
  final Color gradientColor1;
  final Color gradientColor2;
  final Color gradientColor3;
  final Color amountColor;
  final String productName;
  final String date;
  final String modeOfPayment;
  final String amount;


  const LastRecords({Key? key,
  required this.productIcon,
  required this.gradientColor1,
  required this.gradientColor2,
  required this.gradientColor3,
  required this.amountColor,
  required this.productName,
  required this.date,
  required this.modeOfPayment,
  required this.amount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.86,
            height: 90,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white),
            child: Padding(
              padding:  EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.2,
                0, 
                MediaQuery.of(context).size.width * 0.05,
                0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text(productName,style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87
                      ),
                      ),

                      Text(date,style: const TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(modeOfPayment,style: const TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                      Text(amount,style: TextStyle(
                        color: amountColor,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  )
                ]
              ),
            )
          ),
          Positioned(
              top: 10,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.24,
                height: 70,
                decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(colors: [
                      gradientColor1,
                      gradientColor2,
                      gradientColor3
                    ]
                    )
                  ),
                  child: Center(
                    child: Icon(productIcon,color:Colors.white,size: 35,),
                  ),
                )
            ),
        ],
      ),
    );
  }
}
