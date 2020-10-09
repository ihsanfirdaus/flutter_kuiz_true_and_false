import 'package:flutter/material.dart';
import 'package:kuis/views/quiz_florafauna.dart';
import 'package:kuis/views/quiz_pemrograman.dart';
import 'package:kuis/views/quiz_play.dart';

class Category extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<Category>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Kategori Kuis'),
        backgroundColor: Colors.purpleAccent,
      ),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new ListView(
        padding: new EdgeInsets.all(32.0),
        children: <Widget>[
          new Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QuizPemrograman()));
              },
                child: new Container(
                child: new Column(
                  children: <Widget>[ 
                    Image.asset("assets/images/300419100457_arif-riyanto-974674-unsplash.jpg"),
                    Padding(padding: EdgeInsets.all(6)),
                    new Text('Pemrograman', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                    Padding(padding: EdgeInsets.all(6)),
                  ],
                ),
              ),
            ),
          ),
          new Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QuizPlay()));
            },
              child: new Container(
              child: new Column(
                children: <Widget>[ 
                  Image.asset("assets/images/ilustrasi-film-_170210151713-402.jpg"),
                  Padding(padding: EdgeInsets.all(6)),
                  new Text('Film', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  Padding(padding: EdgeInsets.all(6)),
                ],
              ),
            ),
          ),
        ),
        new Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QuizFloraFauna()));
            },
              child: new Container(
              child: new Column(
                children: <Widget>[ 
                  Image.asset("assets/images/D8EzvqR6hA.jpg"),
                  Padding(padding: EdgeInsets.all(6)),
                  new Text('Flora dan Fauna', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  Padding(padding: EdgeInsets.all(6)),
                ],
              ),
            ),
          ),
        ),
        new Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QuizPlay()));
            },
              child: new Container(
              child: new Column(
                children: <Widget>[ 
                  Image.asset("assets/images/uplayplus_hero.jpg"),
                  Padding(padding: EdgeInsets.all(6)),
                  new Text('Games', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  Padding(padding: EdgeInsets.all(6)),
                ],
              ),
            ),
          ),
        ),
        new Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QuizPlay()));
            },
              child: new Container(
              child: new Column(
                children: <Widget>[ 
                  Image.asset("assets/images/Blog_Acara-Konser-Musik-Tahunan-di-Indonesia-buat-Pecinta-Musik.jpg"),
                  Padding(padding: EdgeInsets.all(6)),
                  new Text('Musik', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  Padding(padding: EdgeInsets.all(6)),
                ],
              ),
            ),
          ),
        ),
        new Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QuizPlay()));
            },
              child: new Container(
              child: new Column(
                children: <Widget>[ 
                  Image.asset("assets/images/83f81adb-4461-48c0-bdd9-c7382ea91b20_169.jpeg"),
                  Padding(padding: EdgeInsets.all(6)),
                  new Text('Olahraga', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  Padding(padding: EdgeInsets.all(6)),
                ],
              ),
            ),
          ),
        ),
        new Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QuizPlay()));
            },
              child: new Container(
              child: new Column(
                children: <Widget>[ 
                  Image.asset("assets/images/murid-sekolah_20151112_104930.jpg"),
                  Padding(padding: EdgeInsets.all(6)),
                  new Text('Pendidikan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  Padding(padding: EdgeInsets.all(6)),
                ],
              ),
            ),
          ),
        )
      ],
      ),
    );
  }
}