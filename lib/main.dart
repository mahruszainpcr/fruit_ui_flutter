import 'package:flutter/material.dart';
import 'package:fruit_ui/detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buah-buahan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: MyHomePage()),
      routes: {
        '/home': (context) => MyHomePage(),
        '/detail': (context) => Detail(),
      },
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
        child: Row(
          children: <Widget>[Sidebar(), menuUtama()],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            selectedItemColor: Colors.cyan,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.sort), title: Text('Sort')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), title: Text('Cart')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('User'))
            ],
          ),
        ),
      ),
    );
  }

  Container menuUtama() {
    return Container(
      child: Expanded(
        child: Container(
          color: Colors.black.withOpacity(0.03),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.black.withOpacity(0.05)),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              padding: EdgeInsets.all(3),
                              child: Icon(
                                Icons.location_on,
                                size: 20,
                                color: Colors.cyan,
                              )),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: 100,
                            padding: EdgeInsets.only(left: 10, bottom: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Pekanbaru'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.1),
                        ),
                        child: Icon(
                          Icons.search,
                          size: 24,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(child: Isi()),
            ],
          ),
        ),
        flex: 4,
      ),
    );
  }
}

class Isi extends StatelessWidget {
  const Isi({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              buahList(
                  "Cherry",
                  Image.asset(
                    "images/cherry.png",
                    width: 80,
                  ),
                  "100 g",
                  "Rp.1000",
                  Colors.pinkAccent.withOpacity(0.3),
                  context),
              SizedBox(
                width: 16,
              ),
              buahList(
                  "Banana",
                  Image.asset(
                    "images/banan.png",
                    width: 90,
                  ),
                  "100 g",
                  "Rp.1000",
                  Colors.orange.withOpacity(0.3),
                  context),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              buahList(
                  "Alpukat",
                  Image.asset(
                    "images/alpukat.png",
                    height: 100,
                  ),
                  "100 g",
                  "Rp.1000",
                  Colors.greenAccent.withOpacity(0.3),
                  context),
              SizedBox(
                width: 16,
              ),
              buahList(
                  "Strawberry",
                  Image.asset(
                    "images/strawberry.png",
                    width: 70,
                  ),
                  "100 g",
                  "Rp.1000",
                  Colors.red.withOpacity(0.3),
                  context),
            ],
          ),
        ),
      ],
    );
  }

  Expanded buahList(
      String nama, Image gambar, String berat, String harga, Color warna, BuildContext context) {
    var keranjang;
    if (nama == "Banana") {
      keranjang = Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.remove,
                color: Colors.cyan,
                size: 16,
              ),
              Text("6"),
              Icon(
                Icons.add,
                color: Colors.cyan,
                size: 16,
              ),
            ],
          ));
    } else {
      keranjang = Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),
          child: Icon(
            Icons.add,
            color: Colors.cyan,
            size: 16,
          ));
    }
    return Expanded(
      flex: 1,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            color: warna, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail');
                    },
                    child: 
gambar),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    nama,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    berat,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 4),
                  child: Text(
                    harga,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[keranjang],
            )
          ],
        ),
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(-90 / 360),
                  child: 
                  Stack(
                    children: <Widget>[
                     
                       Row(
                    children: <Widget>[
                      Icon(
                        Icons.brightness_1,
                        color: Colors.cyan,
                        size: 15,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: Text("Top fruit",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                    ],
                  )
                 
                ),
              ),
              Container(
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(-90 / 360),
                  child: Text("Fruit juice",
                      style: TextStyle(fontSize: 14, color: Colors.black38,
                                letterSpacing: 0.5,)),
                ),
              ),
              Container(
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(-90 / 360),
                  child: Text("Fruit platter",
                      style: TextStyle(fontSize: 14, color: Colors.black38,
                                letterSpacing: 0.5,)),
                ),
              ),
              Container(
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(-90 / 360),
                  child: Text("Special fruit",
                      style: TextStyle(fontSize: 14, color: Colors.black38,
                                letterSpacing: 0.5,)),
                ),
              ),
              Container(
                child: RotationTransition(
                    turns: AlwaysStoppedAnimation(-90 / 360),
                    child: Text("Special",
                        style: TextStyle(fontSize: 14, color: Colors.black38,
                                letterSpacing: 0.5,))),
              )
            ],
          ),
        ),
        flex: 1,
      ),
    );
  }
}
