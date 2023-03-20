import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int card_number;
  final int expiryMonth;
  final int expiryYear;
  final  color;
  const MyCard({Key? key, required this.balance, required this.card_number, required this.expiryMonth, required this.expiryYear, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(

      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16)

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Balance',style: TextStyle(color: Colors.white),

                ),

                SizedBox(height: 10),
                Image.asset('assets/icons/visa.png',height: 50),
              ],
            ),

            // ignore: prefer_interpolation_to_compose_strings
            Text('\$'+balance.toString(),style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(card_number.toString(),
                  style:
                  TextStyle(color: Colors.white),),


                //card Expiry date
                Text(expiryMonth.toString()+'/'+expiryYear.toString(),style: TextStyle(color: Colors.white),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
