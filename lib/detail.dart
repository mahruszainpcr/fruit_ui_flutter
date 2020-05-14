import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  Detail({Key key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.amber[200],
              child: Column(
                children: <Widget>[
                    Image.asset("images/banan.png", width:300)
                ],
              ),
              ),
              
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Colors.white),
            child: Container(
                child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "Banana",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.share,
                          size: 30,
                          color: Colors.black38,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "100 gram",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 24, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Rp.10.000",
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 40, color: Colors.redAccent),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.cyan,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.cyan,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.cyan,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.cyan,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.cyan,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                "8.0",
                                textAlign: TextAlign.left,
                                style:
                                    TextStyle(fontSize: 24, color: Colors.cyan),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.cyan[100],
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'No return',
                              style: TextStyle(color: Colors.cyan),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.cyan[100],
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'No return',
                              style: TextStyle(color: Colors.cyan),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.cyan[100],
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'No return',
                              style: TextStyle(color: Colors.cyan),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.cyan[100],
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'No return',
                              style: TextStyle(color: Colors.cyan),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 4, left: 16),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black26.withOpacity(0.05)),
                        child: Stack(children: <Widget>[
                          new Icon(
                            Icons.shopping_cart,
                            color: Colors.black12,
                            size: 30,
                          ),
                          new Positioned(
                            top: 0.0,
                            right: 0.0,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.redAccent
                              ),
                              child: Text("1",
                              style: TextStyle(
                                color:Colors.white
                              ),),
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        width:10,
                      ),
                      Container(
                        width: 270,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color:Colors.cyan,
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(10))
                        ),
                        child: Icon(Icons.add, color: Colors.white, size: 25,),
                      )
                    ],
                  ),
                )
              ],
            )),
          ),
        ],
      )),
    );
  }
}
