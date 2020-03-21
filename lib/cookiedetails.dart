import 'package:flutter/material.dart';

import 'bottombar.dart';

class CookieDetails extends StatelessWidget {
    final  assetPath,cookieprice, cookiename;
    CookieDetails({this.assetPath, this.cookieprice, this.cookiename});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Pickup',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(children: <Widget>[
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Cookie',
            style: TextStyle(
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532)),
          )
        ),
        SizedBox(height: 15.0,),
        Hero(
          tag:Text('hero2'),
          child:Image.asset(assetPath,  
          height:150.0,
          width:100.0,
          fit:BoxFit.contain
          ),
        ),
        SizedBox(height: 20.0,),
        Center(
          child: Text(cookieprice,style: TextStyle(
            fontSize:25.0,color:Color(0xFFF17532),fontWeight:FontWeight.bold
          ),),
        ),
          SizedBox(height: 10.0,),
        Center(
          child: Text(cookiename,style: TextStyle(
            fontSize:30.0,color:Color(0xFFEBEBEBE),fontWeight:FontWeight.bold
          ),),
        ),
         SizedBox(height: 10.0,),
        Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 65.0,
                child: Text('Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))
                ),
              ),
            ),
             SizedBox(height: 20.0,),
             Center(
               child:Container(
                 width: MediaQuery.of(context).size.width - 65.0,
                 height: 50.0,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20.0),
                   color:Color(0xFFF17532)
                 ),
                 child: Center(
                   child:Text('Add to Cart', style:TextStyle(color:Colors.white, fontWeight: FontWeight.bold))
                 ),
               )
             )
      ]),
      floatingActionButton: FloatingActionButton(
        heroTag: 'btn1',
          onPressed: () {},
          backgroundColor: Color(0xFFF17532),
          child: Icon(Icons.fastfood)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
