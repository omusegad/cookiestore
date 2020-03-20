import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape:CircularNotchedRectangle(),
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child:Container(
        height:50.0 ,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0)), 
          color: Colors.white,
        ),
       
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Container(
              height:50.0,
              width:MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 Container(
                   padding: EdgeInsets.only(left:25.0),
                   child: Icon(Icons.home, color: Color(0xFFEF7532), size: 28.0,)),
                 Container(
                  padding: EdgeInsets.only(right:25.0),
                  child: Icon(Icons.person_outline, color: Color(0xFf676E79), size: 28.0,))

              ],),
            ),
            Container(
              height:50.0,
              width:MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 Container(
                    padding: EdgeInsets.only(left:25.0),
                   child: Icon(Icons.search, color: Color(0xFFEF7532), size: 28.0,)),
                Container(
                   padding: EdgeInsets.only(right:25.0),
                  child: Icon(Icons.shopping_basket, color: Color(0xFF676E79), size: 28.0,))

              ],)
            )
          ]
        ),
        )
    );
  }
}

