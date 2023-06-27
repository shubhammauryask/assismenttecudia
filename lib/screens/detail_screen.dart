import 'package:assismenttecudia/models/offer.dart';
import 'package:assismenttecudia/screens/home_screen.dart';
import 'package:assismenttecudia/widgets/offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  var  _isExpanded = false;
  var offerList = [
    Offer(path: 'assets/images/bed.png', name:'2 Bed'),
    Offer(path: 'assets/images/dinner.png', name: 'Dinner'),
    Offer(path: 'assets/images/hottub.png', name: 'Hot Tub'),
    Offer(path: 'assets/images/ac.png', name: '1 AC'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Image.asset('assets/images/bali_motel_vung_tau.jpg',height: MediaQuery.of(context).size.height*0.33,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
          Align(
            alignment: Alignment(0, 0.8),
            child: Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      'BaLi Motel\nVung Tau',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                         Image.asset('assets/images/location.png',height: 15,width: 15,),
                        Text('Indonesia',)
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Image.asset('assets/images/star.png',height: 15,width: 15,),
                        RichText(
                          text: TextSpan(
                            text: '4.9',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                            children: [
                              TextSpan(
                                text: '(6.8K review)',
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Image.asset('assets/images/dollar.png',height: 20,width: 20,),
                            RichText(
                              text: TextSpan(
                                text: '580/',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),
                                children: [
                                  TextSpan(
                                    text: 'night',
                                    style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                    SizedBox(height: 8,),
                    Divider(),
                    SizedBox(height: 8,),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Set in Vung Tau, 100 meters from Front Beach, BaLi Motel Vung Tau offers accommodation with a garden, private parking parking and a shared ',
                            maxLines: _isExpanded ? 7 : 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (!_isExpanded)
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  _isExpanded = !_isExpanded;
                                });
                              },
                              child: Text(
                                '...Read more',
                                style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          SizedBox(height: 15,),
                          Text(
                            'What we offer',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin:EdgeInsets.only(left: 10,right: 10) ,
                            height: MediaQuery.of(context).size.height*0.12,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: offerList.length,
                              itemBuilder: (context, index){
                                return offer(context, offerList[index]);
                              },
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text('Hosted by',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
                          SizedBox(height: 10,),
                          ListTile(

                            leading:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                               child: Image.asset(
                               'assets/images/photo.png',
                              height: MediaQuery.of(context).size.height*0.06,
                             fit: BoxFit.cover,
                                   ),
                            ),
                            title: Text('Harleen Smith',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            trailing: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: IconButton(
                                  onPressed: (){},
                                  icon: Image.asset(
                                    'assets/images/message.png',
                                    height: MediaQuery.of(context).size.height*0.04,
                                    fit: BoxFit.cover,
                                    color: Colors.white,
                                  )),
                            ),
                            subtitle: Row(
                              children: [
                                Image.asset(
                                  'assets/images/star.png',
                                  height: 15,
                                  width: 15,
                                ),
                                SizedBox(width: 5,),
                                RichText(
                                  text: TextSpan(
                                    text: '4.9',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '(1.4k review)',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.06,
                    child: ElevatedButton(
                      onPressed: (){

                      },
                      child: Container(
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 22,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade400,
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.1,-0.57),
            child: Container(
              child: ElevatedButton(
                onPressed: () {  },
                child: Text('124 photos',style: TextStyle(color:Colors.white),),
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),

              )
            ),
          )
          ),
          Align(
            alignment: Alignment(0,-0.9),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.05,
                        width: MediaQuery.of(context).size.width*0.11,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(130),
                        ),
                        child: IconButton(
                            onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
                            },
                            icon: Image.asset(
                              'assets/images/back.png',
                              height: MediaQuery.of(context).size.height*0.03,
                              fit: BoxFit.cover,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.05,
                        width: MediaQuery.of(context).size.width*0.11,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                            onPressed: (){},
                            icon: Image.asset(
                              'assets/images/share.png',
                              height: MediaQuery.of(context).size.height*0.03,
                              fit: BoxFit.cover,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    SizedBox(width: 10,),
                    ClipRRect(
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.05,
                        width: MediaQuery.of(context).size.width*0.11,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(130),
                        ),
                        child: IconButton(
                            onPressed: (){},
                            icon: Image.asset(
                              'assets/images/heart.png',
                              height: MediaQuery.of(context).size.height*0.03,
                              fit: BoxFit.cover,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
