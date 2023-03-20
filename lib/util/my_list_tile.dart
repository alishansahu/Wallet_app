import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String imageUrl;
  final String tileTitle;
  final String tileSubTitle;

  const MyListTile({Key? key, required this.imageUrl, required this.tileTitle, required this.tileSubTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              height: 80,
              decoration: BoxDecoration(

                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Image.asset(imageUrl),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tileTitle,style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 8),
                Text(tileSubTitle,style: TextStyle(
                    fontSize: 16,color: Colors.grey.shade700
                ),),
              ],
            ),
          ],
        ),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
