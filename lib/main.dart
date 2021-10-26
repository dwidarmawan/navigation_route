import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanPertama(),
    routes: <String, WidgetBuilder>{
      'HalamanPertama': (BuildContext context) => new HalamanPertama(),
      'HalamanKedua': (BuildContext context) => new HalamanKedua(),
    },
  ));
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home With List'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: new IconButton(
          icon: new Icon(
            Icons.headset,
            size: 50.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalamanKedua');
          },
        ),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("SPEAKER"),
      ),
      body: Center(
        child: new IconButton(
          icon: new Icon(
            Icons.speaker,
            size: 50.0,
            color: Colors.deepOrangeAccent,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalamanPertama');
          },
        ),
      ),
    );
  }
}
