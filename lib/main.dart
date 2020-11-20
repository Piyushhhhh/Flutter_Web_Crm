import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(4, 131, 184, .1),
      100: Color.fromRGBO(4, 131, 184, .2),
      200: Color.fromRGBO(4, 131, 184, .3),
      300: Color.fromRGBO(4, 131, 184, .4),
      400: Color.fromRGBO(4, 131, 184, .5),
      500: Color.fromRGBO(4, 131, 184, .6),
      600: Color.fromRGBO(4, 131, 184, .7),
      700: Color.fromRGBO(4, 131, 184, .8),
      800: Color.fromRGBO(4, 131, 184, .9),
      900: Color.fromRGBO(4, 131, 184, 1),
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CRM',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFFf1828d, color),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  drawer(),
                  content(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawer() {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFf1828d),
            border: Border.all(
              color: Color(0xFFf1828d),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          width: 200,
          child: ListView(
            children: <Widget>[
              userAvatarandDetails(),
              Center(
                child: Text(
                  "Dashboard",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.white54),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Reviews",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.white54),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Customers",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.white54),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
        child: ListView(children: [
          dashboardFilter(),
          Center(child: Text('Content')),
        ]),
      ),
    );
  }

  Widget userAvatarandDetails() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            'PK',
            style: TextStyle(
              color: Color(0xFFf1828d),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        title: Text(
          "Piyush Kumar",
          style: TextStyle(fontSize: 13),
        ),
        subtitle: Text("Piyush@gmail.com", style: TextStyle(fontSize: 12)),
      ),
    );
  }

  Widget dashboardFilter() {
    return Container(
      child: Row(
        children: [
          Flexible(
            child: Container(
              width: 170,
              child: FlatButton(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.calendar_today),
                      Text('Month'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: FlatButton(
              child: Icon(Icons.filter_alt),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 150),
          ),
          Card(
            elevation: 0,
            child: FlatButton(
              child: Icon(Icons.notifications),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.0),
            ),
          ),

           Card(
            elevation: 0,
            child: FlatButton(
              child: Icon(Icons.flag),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.0),
            ),
          ),
        ],
      ),
    );
  }
}
