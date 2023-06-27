import 'package:assismenttecudia/models/popular_hotels.dart';
import 'package:assismenttecudia/widgets/hot_Deals.dart';
import 'package:assismenttecudia/widgets/popular_hotels.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int Selected = 1;
  var  popularHotelList = [
    PopularHotels(path:'assets/images/santorini.jpeg',name:'Santorini',location:'Greece',price:'488',rating:'4.9'),
    PopularHotels(path:'assets/images/hotel_royal.jpg', location:'Spain', price:'280', rating:'4.8', name:'Hotel Royal')
  ] ;
  Widget costumRadio(String text , int index,String image)
  {
    return Container(
      width: 80,
      height: 100,
      child: OutlinedButton(

        style: ElevatedButton.styleFrom(
          backgroundColor: (Selected == index)?Colors.blueAccent:Colors.white,
            shape:   RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),

          onPressed: (){
            setState(() {
              Selected = index;
            });
          },
           child: Padding(
             padding: const EdgeInsets.only( top: 15,bottom: 15),
             child: Column(
             children: [
               Image.asset(image,height: 30,width: 30,color: (Selected == index)?Colors.white:Colors.black,),
                 SizedBox(height: 10,),
                 Text(text,
                 style: TextStyle(
                   color:(Selected == index)?Colors.white:Colors.blueGrey,
                 ),
                 ),
        ],
      ),
           ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Where you\nwanna go?', style: TextStyle(
                      decorationColor: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
                  Icon(Icons.search_rounded, size: 30,),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                 costumRadio('Hotel', 1,'assets/images/hotel.png',),
                  SizedBox(width: 15,),
                  costumRadio('Flight', 2,'assets/images/flight.png'),
                  SizedBox(width: 15,),
                  costumRadio('Place', 3,'assets/images/location.png'),
                  SizedBox(width: 15,),
                  costumRadio('Food', 4,'assets/images/food.png'),
                  SizedBox(width: 15,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
              child: Expanded(child:
                  Column(
                    children: [
                        Row(
                          children: [
                            Text('Popular Hotels',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                            Spacer(),
                            Text('See all',style: TextStyle(color: Colors.orangeAccent),)

                          ],
                        ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.28,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: popularHotelList.length,
                            itemBuilder:(context , index){
                              return popularHotels(context, popularHotelList[index]);
                            }
                        ),
                      )
                    ],
                  )
              ),
            ),
          Expanded(child: 
             Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Row(
                     children: [
                       Text('Hot Deals',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black))
                     ],
                   ),
                 ),
                 Container(
                   height: MediaQuery.of(context).size.height*0.30,
                   child:
                   hotDeals(context, PopularHotels(path: 'assets/images/bali_motel_vung_tau.jpg', location: 'Indonesia', price: '580', rating: '4.9', name: 'Bali Motel Vung Tau'))

                   )
               ],
             )
          )
          ],
        ),
      ),
    );
  }
}





