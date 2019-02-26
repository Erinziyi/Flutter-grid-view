import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "GRID dan Hero",
    home: new Home(),
  ));
}

class  Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  List<Container>daftarSuperhero = new List();

  var karakter = [
    {"nama": "Aquaman", "gambar": "aquaman.jpg"},
    {"nama": "Batman", "gambar": "batman.jpg"},
    {"nama": "Captain", "gambar": "captain.jpg"},
    {"nama": "Catwoman", "gambar": "catwoman.jpg"},
    {"nama": "Flash", "gambar": "flash.jpg"},
    {"nama": "Hulk", "gambar": "hulk.jpg"},

  ];

  _buatlist()async{
    for (var i = 0; i < karakter.length;i++){
      final karakternya =karakter[i];
      final String gambar = karakternya ["gambar"];
      daftarSuperhero.add(
        new Container(
          padding:new EdgeInsets.all(10.0),
          child: new Card( child:
             new Column(
               children: <Widget>[
                 
                 new Hero(
                   child: new Material(
                     child: new Image.asset("img/$gambar",fit: BoxFit.cover,),



                   ),
                 ),

                 new Padding(padding:new EdgeInsets.all(10.0),),
                 new Text (karakternya['nama'],style: new TextStyle(fontSize: 18.0),)
               ],

              )
             ),

        )
      );
  }
}

@override
  void initState() {
  _buatlist();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Super Hero",style: new TextStyle(color: Colors.white),),
      ),
      body: new GridView.count(
          crossAxisCount:2,
              children:daftarSuperhero,
      ),

    );
  }
}
