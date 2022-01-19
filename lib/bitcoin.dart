import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:bitcoin/listtile.dart';

class bitcoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> gradientColors = [
      const Color(0xff23b6e6),
      const Color(0xff02d39a),
    ];
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bitcoin',
      home: Scaffold(
        backgroundColor:Color(0xff01C1C28),
        appBar: AppBar(
          backgroundColor: Color(0xff01C1C28),
          leading: Container(
        decoration:  BoxDecoration(
           color:Color(0xff02B2B3D)) ,
              child: Icon(Icons.arrow_back_sharp)),
          title: Text('Watchlist'),
        ),
        body: Column(children: <Widget>[
          SizedBox(
            height: 45,
            width: size.width,
          ),

                   Container(
                     decoration:  BoxDecoration(
                       borderRadius:  BorderRadius.circular(16.0),
                       color: Color(0xff02B2B3D),
                     ),
              height: size.height * 0.225,
                  width: size.width* 0.9,
                     // color: Color(0xff02B2B3D),
    child: Card( elevation: 5,
    color:  Color(0xff02B2B3D),
      child:ListTile (
        title:  Padding(
          padding: EdgeInsets.only(top:15),
          child: Row(
              children: <Widget> [
                SizedBox(width: 5),
                CircleAvatar( child: Image.asset('assets/images/1.png'),),
                SizedBox(width: 8),
                Text('Bitcoin',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                    textScaleFactor: 1),
                Spacer(),
                Text('USD',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow),
                    textScaleFactor: 1),
                Icon(Icons.keyboard_arrow_down,color: Colors.yellow,)
            ]
      ),
        ),
        subtitle: Padding(
          padding:EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text('3,549.79',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            textScaleFactor: 2.2),
                Text('+\$19.283 USD',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
                    textScaleFactor: 1.2),
                ]
                ),
        ),
                   ),
                   ),
                   ),
          SizedBox(
            height: 37,
          ),
          Wrap(
            spacing:size.width* 0.15, // space between two icons
            children: <Widget>[
              Text("\$19.283 "
                  ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
              textScaleFactor: 1.6
              ,),
              Text("\$80.8B "
                  ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  textScaleFactor: 1.6),
              Text("\$1.46B "
                  ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  textScaleFactor: 1.6),

            ],
          ),
          SizedBox(
            height: 4,
          ),

          Wrap(
            spacing:size.width* 0.18, // space between two icons
            children: <Widget>[
              Text("Global Avg "
                  ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  textScaleFactor: 1),
              Text("Market Cap"
                  ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  textScaleFactor: 1),
              Text("Volume"
                  ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  textScaleFactor: 1),
    ]),

              SizedBox(
                height: 37,
              ),
              Container(
                  height: size.height * 0.27,
                  width: size.width* 0.95,
                  decoration:  BoxDecoration(
                    borderRadius:  BorderRadius.circular(16.0),
                    color: Colors.green,
                  ),
                  child: Card( elevation: 5,
                  child: LineChartSample2()
                      )
    ),
          SizedBox(
            height: 37,
          ),
          Wrap(
              spacing:size.width* 0.1, // space between two icons
              children: <Widget>[
          Container(
          width: MediaQuery.of(context).size.width * 0.4,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 15.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Sell',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 15.0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Buy',
                        style: TextStyle(fontSize: 20,color:Colors.blue),
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ]
        ),
      ),
    );
  }
}