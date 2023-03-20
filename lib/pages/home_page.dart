import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/util/my_button.dart';

import '../util/my_card.dart';
import '../util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller= PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.pink,

        child: Icon(Icons.monetization_on,size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround ,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home,
              size: 32,
              color: Colors.pink.shade200
              )),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings,
              size: 32,
              color: Colors.grey
              )),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //appbar
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('MY',
                          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                        ),
                        Text(' Cards',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),

                    //PlusIcon
                    Container(
                      padding: EdgeInsets.all(4 ),
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey3,
                        shape: BoxShape.circle
                      ),
                        child: Icon(Icons.add)),
                  ],
                ),
              ),
              SizedBox(height: 25),
           Container(
           height: 200,
          child: PageView(
            scrollDirection: Axis.horizontal,
           controller: _controller,
           children: [

             MyCard(
               balance: 5250.20,
               card_number: 12345678,
               expiryMonth: 10,
               expiryYear: 25,
               color: Colors.deepPurple.shade300,
             ),
             MyCard(
                 balance: 4290.45,
                 card_number: 87654321,
                 expiryMonth: 12,
                 expiryYear: 30,
                 color: Colors.blue.shade300,
             ),
             MyCard(
                 balance: 9952.50,
                 card_number: 0987654321,
                 expiryMonth: 06,
                 expiryYear: 35,
                 color: Colors.green.shade300,
             ),
           ],

          ),
           ),
              SizedBox(height: 25),
              SmoothPageIndicator(controller: _controller, count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(imageUrl: 'assets/icons/send-money.png',buttonText: 'Send',),
                    MyButton(imageUrl: 'assets/icons/cards.png',buttonText: 'Pay',),
                    MyButton(imageUrl: 'assets/icons/bill.png',buttonText: 'Bills',),

                  ],

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [


                        MyListTile(
                          imageUrl: 'assets/icons/statistics.png',
                          tileTitle: 'Statistics',
                          tileSubTitle: 'Payments and incomes',

                        ),
                        MyListTile(
                          imageUrl: 'assets/icons/transactional-data.png',
                          tileTitle: 'Transactions',
                          tileSubTitle: 'Transactions history',

                        ),
                      ],

                    ),
                    ),
                  ]
                ),
              )

        ),


    );
  }
}
