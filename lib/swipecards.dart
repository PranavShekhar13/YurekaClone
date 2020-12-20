import './message1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class SwipeCards extends StatefulWidget {
  @override
  _SwipeCardsState createState() => _SwipeCardsState();
}

class _SwipeCardsState extends State<SwipeCards> with TickerProviderStateMixin {
  List<String> welcomeImages = [
    "assets/ui-ux-banner.png",
    "assets/ui-ux-banner.png",
    "assets/ui-ux-banner.png",
    "assets/ui-ux-banner.png",
    "assets/ui-ux-banner.png",
    "assets/ui-ux-banner.png",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      /*appBar: AppBar(
        //centerTitle: true,
        backgroundColor: Colors.white,
        
        title: Text(
          'Tinder like CARDS',
          style: TextStyle(color: Colors.redAccent),
        ),
      ),*/
      body: //Container(
          //alignment: Alignment.center,
          //color: Colors.grey.shade200,
          //height: 700, //MediaQuery.of(context).size.height * 1,
          //width: 400, //MediaQuery.of(context).size.width * 0.9,
          //child:
          Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 55,
            width: 420,
            color: Colors.cyan.shade100,
            child: Row(
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.only(bottom: 47),
                  alignment: Alignment.center,
                  onPressed: () => print('k'),
                  icon: Icon(Icons.account_circle),
                  iconSize: 55,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          //SizedBox(
          //height: 43, //80,
          //),
          Stack(
            // alignment: Alignment.bottomRight,
            children: <Widget>[
              Container(
                  alignment: Alignment.bottomCenter,
                  //color: Colors.lightBlueAccent.shade400,
                  height: 520, //MediaQuery.of(context).size.height * 0.8,
                  width: 450, //MediaQuery.of(context).size.height * 0.8,
                  child: TinderSwapCard(
                    orientation: AmassOrientation.TOP,
                    totalNum: welcomeImages.length,
                    stackNum: 4,
                    swipeEdge: 4.0,
                    maxWidth: MediaQuery.of(context).size.width * 1.3,
                    maxHeight: MediaQuery.of(context).size.width * 1.3,
                    minWidth: MediaQuery.of(context).size.width * 1.1,
                    minHeight: MediaQuery.of(context).size.width * 1.1,
                    cardBuilder: (context, index) => Card(
                      //child: Container(
                      //color: Colors.amber,
                      //height: 830,
                      //width: 450,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Container(
                            height: 580,
                            width: 470,
                            child: Image.asset('${welcomeImages[index]}',
                                fit: BoxFit.fill),
                          ),
                          Container(
                            height: 100, //120,
                            width: 390, //350,
                            child: RaisedButton(
                              color: Colors.white,
                              onPressed: () => print("k"),
                              child: Text(
                                "Organization",
                                //textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  letterSpacing: 3,
                                )),
                              ),
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(.7),
                                  //blurRadius: 3.0, // soften the shadow
                                  spreadRadius: 0.0, //extend the shadow
                                  offset: Offset(
                                    5.0, // Move to right 10  horizontally
                                    5.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                              //color: Colors.grey.shade50,
                              //borderRadius: BorderRadius.only(
                              //topLeft: Radius.circular(20),
                              //bottomLeft: Radius.circular(20))
                            ),
                          )
                        ],
                      ),
                      //),
                    ),
                    cardController: controller = CardController(),
                    swipeUpdateCallback:
                        (DragUpdateDetails details, Alignment align) {
                      if (align.x < 0) {
                      } else if (align.x > 0) {}
                    },
                    swipeCompleteCallback:
                        (CardSwipeOrientation orientaion, int index) {},
                  )),
              /*Container(
                height: 120,
                width: 350,
                child: Text(
                  "Organization",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 3,
                  )),
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(.7),
                        //blurRadius: 3.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 10  horizontally
                          5.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    //color: Colors.grey.shade50,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
              )*/
            ],
          ),
          /*FlatButton(
            onPressed: () => print('press'),
            child: Text('Organization',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  letterSpacing: 0,
                ))),
          ),*/
          Container(
            height: 85,
            width: 420,
            color: Colors.cyan.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //SizedBox(
                //width: 20,
                //),
                /*Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/cancel.png"),
                        fit: BoxFit.cover),
                    //color: Colors.cyan,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),*/
                IconButton(
                  padding: EdgeInsets.only(bottom: 47),
                  alignment: Alignment.center,
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => Message1()));
                  },
                  icon: Icon(Icons.cancel),
                  iconSize: 90,
                  color: Colors.red,
                ),
                //Image.asset("assets/cancel.png"),
                //SizedBox(width: 190),
                IconButton(
                  padding: EdgeInsets.only(bottom: 47),
                  alignment: Alignment.center,
                  onPressed: () => print('k'),
                  icon: Icon(Icons.check_circle),
                  iconSize: 90,
                  color: Colors.greenAccent.shade700,
                ),
                //Image.asset("assets/check (3).png"),
              ],
            ),
          )
        ],
      ),
      //),

      //),

      //],
      //),
    );
  }
}
// );
// }
//}
