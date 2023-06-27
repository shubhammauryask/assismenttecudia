
import 'package:assismenttecudia/models/offer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget offer(BuildContext context, Offer data){
  return Container(
    height: MediaQuery.of(context).size.height*0.08,
    width: MediaQuery.of(context).size.width*0.2,
    margin: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: -1,
          blurRadius: 2,
        ),
      ],
    ),
    child: Column(
      children: [
        SizedBox(height: 12,),
        Image.asset(
          data.path,
          height: MediaQuery.of(context).size.height*0.04,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 8,),
        Text(
            data.name
        )
      ],
    ),
  );
}