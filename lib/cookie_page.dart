import 'package:flutter/material.dart';

import 'cookiedetails.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFCFAF8),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _biuldCard('Icecream Mint', 'Ksh 50',
                      'images/Minicecream.png', false, true, context),
                  _biuldCard('Icecream Cream', 'Ksh 150',
                      'images/Minicecream1.png', true, false, context),
                  _biuldCard('Icecream Classic', 'Ksh 200',
                      'images/Minicecream2.png', false, true, context),
                  _biuldCard('Icecream Choco', 'Ksh 300',
                      'images/Minicecream2.png', true, false, context),
                ],
              ),
            )
          ],
        ));
  }
}

Widget _biuldCard(String name, String price, String imgPath, bool added,
    bool isFavourite, context) {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CookieDetails(
                   assetPath:imgPath,  cookieprice:price,  cookiename:name)),
        );
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      isFavourite
                          ? Icon(Icons.favorite, color: Color(0xFFEF7532))
                          : Icon(Icons.favorite_border,
                              color: Color(0xFFEF7532))
                    ],
                  )),
              Hero(
                tag: Text('hero1'),
                child: Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.contain))),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(price,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFFCC8053),
                      fontFamily: 'Varala')),
              SizedBox(
                height: 7.0,
              ),
              Text(name,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFFEBEBEBE),
                      fontFamily: 'Varala')),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
              Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (!added) ...[
                        Icon(Icons.shopping_basket,
                            color: Color(0xFFD17E50), size: 16.0),
                        Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Color(0xFFD17E50),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                      if (added) ...[
                        Icon(Icons.remove_circle_outline,
                            color: Color(0xFFD17E50), size: 16.0),
                        Text(
                          '3',
                          style: TextStyle(
                              color: Color(0xFFD17E50),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                        Icon(Icons.add_circle_outline,
                            color: Color(0xFFD17E50), size: 16.0),
                      ]
                    ],
                  ))
            ],
          )),
    ),
  );
}
