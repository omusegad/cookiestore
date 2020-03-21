import 'package:flutter/material.dart';

import 'bottombar.dart';
import 'cookie_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cookie Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}


class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFF545D68),
            ),
            onPressed: () {}),
        title: Text('Pickup',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.5,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
              onPressed: null)
        ],
      ),

      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42.0),
          ),
          SizedBox(
            height: 15.0,
          ),
          TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Color(0xFFC88D67),
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(child: Text('Cookies', style: TextStyle(fontSize: 21.0))),
                Tab(child: Text('Cookie  cake', style: TextStyle(fontSize: 21.0))),
                Tab(child: Text('Ice Cake', style: TextStyle(fontSize: 21.0))),
              ]),
              Container(
                height:MediaQuery.of(context).size.height - 50.0 ,
                width: double.infinity,
                child:TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    CookiePage(),
                    CookiePage(),
                    CookiePage(),
                  ],
                )
              ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'btn',
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child:Icon(Icons.fastfood)
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



