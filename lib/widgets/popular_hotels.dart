import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/popular_hotels.dart';

Widget popularHotels(BuildContext context,PopularHotels data){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
    height: MediaQuery.of(context).size.height*0.25,
    width: MediaQuery.of(context).size.width*0.35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
  ),
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(data.path,fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width*0.35,
            height:MediaQuery.of(context).size.height*0.25,
          )
        ),
        Align(
          alignment: Alignment(-0.70,0.2),
          child: Text(
            data.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Align(
          alignment: Alignment(-0.77,0.45),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
               child: Image.asset('assets/images/location.png',color: Colors.white,height: 15,width: 15,),
              ),
              SizedBox(width: 5,),
              Text(
                data.location,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          )
        ),
        Align(
          alignment: Alignment(-0.7, 0.7),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Image.asset(
                  'assets/images/dollar.png',
                  color: Colors.white,
                  height: 15,
                  width: 15,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '${data.price}/',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  children: [
                    TextSpan(
                      text: 'night',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/images/star.png',
                height: 12,
                width: 12,
                color: Colors.yellowAccent,
              ),
              SizedBox(width: 2,),
              Container(
                margin: EdgeInsets.only(right: 7),
                child: Text(
                  data.rating,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}