import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body:ListView(
        children: <Widget>[
          SizedBox(height:15.0),
          Container(
            padding: EdgeInsets.only(right:15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _biuldCard('Icecream Mint', 'Ksh 50', 'imges/icecream_mint.jpg', false,true, context),
                _biuldCard('Icecream Cream', 'Ksh 150', 'imges/icecream_mint.jpg', false,true, context),
                _biuldCard('Icecream Classic', 'Ksh 200', 'imges/icecream_mint.jpg', false,true, context),
                _biuldCard('Icecream Choco', 'Ksh 300', 'imges/icecream_mint.jpg', false,true, context),

              ],
            ),

          )
        ],
      )
      
    );
  }
}

Widget _biuldCard(String name, String price, String imgPath, bool added, bool isFavourite, context){
  return Padding(
    padding: EdgeInsets.only(top:15.0, bottom:5.0, left:5.0,right:5.0),
    child: InkWell(
      onTap:(){},
      child:Container(
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0
            )
          ],
          color: Colors.white
        ),
      ) ,
    ),
  );

}