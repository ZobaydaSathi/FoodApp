import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFfd5e53),
        body: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                //iconarrow
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios,size: 30.0,color: Colors.white,
                    ),
                    //iconfilter,iconmenu
                    Container(
                      width: 120.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.filter_list,size: 30.0,color: Colors.white,),
                          Icon(Icons.menu,size: 30.0,color: Colors.white,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //text
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  children: <Widget>[
                    Text('Healthy',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('Food',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              //food list part
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height - 180.0 ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
                ),
                child: ListView(
                  primary: false,
                  children: <Widget>[
                     Container(
                      height:MediaQuery.of(context).size.height - 300.0 ,
                      padding: EdgeInsets.only(top: 20.0),
                      child: ListView(
                        children: <Widget>[
                          _buildFoodItem('Salmon Bowl','images/images4.png','\$24'),
                          _buildFoodItem('Spring Bowl','images/images2.png','\$25'),
                          _buildFoodItem('Avocado Bowl','images/images1.png','\$22'),
                          _buildFoodItem('Berry Bowl','images/images3.png','\$26')
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(15.0),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20.0),
                              height: 65.0,
                              width: 65.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                borderRadius:BorderRadius.circular((10.0)),
                              ),
                              child: Center(
                                child: Icon(Icons.search,color: Colors.black,size: 30.0,),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(15.0),
                              padding: EdgeInsets.all(20.0),
                              height: 65.0,
                              width: 65.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                borderRadius:BorderRadius.circular((10.0)),
                              ),
                              child: Center(
                                child: Icon(Icons.shopping_basket,color: Colors.black,size: 30.0,),
                              ),
                            ),
                            Expanded(child: Container(
                                margin: EdgeInsets.all(20.0),
                                height: 60.0,
                                width: 130.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                child:Center(
                                  child:Text('CheckOut',
                                    style:TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ) ,
                                  ),
                                )
                            ))

                          ],
                        )
                    )
                  ],
                ),
              ),
            ]
        )
    );
  }
  _buildFoodItem(String food, String imgpath, String price){
    return Padding(
      padding:  EdgeInsets.only(left: 35.0,right:70.0,top: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 30.0),
          Expanded(child: Container(
            child: Row(
              children: <Widget>[
                 Hero(
                     tag: imgpath,
                   child: Image(
                     image:AssetImage(imgpath),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0,
                  )
                ),
              SizedBox(width: 15.0),
               Expanded(child:Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text(food,
                     style: TextStyle(
                       fontSize: 20.0,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   Text(price,
                     style: TextStyle(
                       fontSize: 18.0,
                       color: Colors.grey,
                     ),
                   )
                 ],
               )
               ),
              ],
             ),
            ),
          ),
        Icon(Icons.add,size: 25.0,)
        ],
      ),
    );
  }
}
