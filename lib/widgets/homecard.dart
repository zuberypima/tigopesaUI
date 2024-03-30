import 'package:flutter/material.dart';
import 'package:tigopesaui/utilities/constants.dart';

class HomeCard {
  late IconData iconData;

  Widget homeCard(String cardlabel, IconData iconData) {
    return Card(
        child: Container(
          decoration: BoxDecoration(
          color: Colors.white,
borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
                children: [
          Icon(iconData,color: mainColor,size: 40,),
          Text(cardlabel,style: TextStyle(color: mainColor,fontSize: 15),),
                ],
              ),
        ));
  }
}
