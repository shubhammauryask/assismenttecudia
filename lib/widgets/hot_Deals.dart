import 'package:assismenttecudia/screens/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/popular_hotels.dart';

Widget hotDeals(BuildContext context,PopularHotels data){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
    height: MediaQuery.of(context).size.height*0.30,
    width: MediaQuery.of(context).size.width*0.90,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
     child: Stack(
       children: [
         ClipRRect(
             borderRadius: BorderRadius.circular(20),
             child: InkWell(
               onTap:(){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>DetailScreen()),
                 );
               },
               child: Image.asset(data.path,fit: BoxFit.cover,
                   width: MediaQuery.of(context).size.width*0.90,
                   height:MediaQuery.of(context).size.height*0.30,),
             ),
             // child: Image.asset(data.path,fit: BoxFit.cover,
             //   width: MediaQuery.of(context).size.width*0.90,
             //   height:MediaQuery.of(context).size.height*0.30,

         ),
         Align(
           alignment: Alignment(-0.75,0.6),
           child: Text(
             data.name,
             style: TextStyle(
               color: Colors.white,
               fontSize: 18,fontWeight: FontWeight.bold,
             ),
           ),
         ),
         Align(
             alignment: Alignment(-0.80,0.80),
             child: Row(
               children: [
                 Container(
                   margin: EdgeInsets.only(left: 20),
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
          alignment: Alignment(0,0.6),
          child: Container(
            margin: EdgeInsets.only(left: 280),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/star.png',
                  height: 12,
                  width: 12,
                  color: Colors.yellowAccent,
                ),
                SizedBox(width: 5,),
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
        ),
      Align(
        alignment: Alignment(0.80,0.80),
        child: Container(
          margin:  EdgeInsets.only(left: 230),
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
            ],
          ),
        ),
      ),
         Align(
           alignment: Alignment(0,-0.87),
           child:Container(
             margin: EdgeInsets.only(left: 15),
             child: Row(
               children: [
                 TextButton(
                   onPressed: () {
                     // Button onPressed logic here
                   },
                   child: Text('25% OFF'),
                   style: TextButton.styleFrom(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20),
                     ),
                     backgroundColor:Color(0xFFFF8551),
                     primary: Colors.white,
                   ),
                 )

               ],
             ),
           ),
         )
       ],
     ),
  );
}

class OxFFFF8551 {
}