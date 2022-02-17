import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Tampilan Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //create controller untuk tabBar
  late TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //create appBar
      appBar: new AppBar(
        //warna background
        backgroundColor: Colors.lightGreen,
        //judul
        title: new Text("Tampilan Home "),
        //bottom
        bottom: new TabBar(
          controller: controller,
          //source code lanjutan
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.book),
              text: "Berita",
            ),
            new Tab(
              icon: new Icon(Icons.favorite),
              text: "Favorit",
            ),
            new Tab(
              icon: new Icon(Icons.download),
              text: "Unduh",
            ),
            new Tab(
              icon: new Icon(Icons.settings),
              text: "Pengaturan",
            ),
          ],
        ),
      ),
    );
  }
}
