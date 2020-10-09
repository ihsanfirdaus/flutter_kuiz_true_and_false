import 'package:flutter/material.dart';
import 'package:kuis/views/home.dart';
import 'package:kuis/model/category.dart';

class Result extends StatefulWidget {
  
  int score, totalQuestion, correct, incorrect, notattempted;

  Result({this.score,this.totalQuestion,this.correct,this.incorrect,this.notattempted});

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  String pesan = "";

  @override
  void initState() {
  
    super.initState();

    var nilai = (widget.score/(widget.totalQuestion*20))*100;

    if(nilai >= 90){
      pesan = "Luar Biasa :)";
    }else if(nilai >= 80 && nilai < 90){
      pesan = "Kerja Bagus !";
    }else if(nilai > 70 && nilai < 80){
      pesan = "Lumayan lah ...";
    }else if(nilai < 70){
      pesan = "Tingkatkan lagi !";
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => Future.value(false),
        child: Scaffold(
         body: Container(
           width: MediaQuery.of(context).size.width,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("$pesan",style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 14),
              Text("Skor kamu ${widget.score}",style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 8),
              Text("${widget.correct} Benar, ${widget.incorrect} Salah & ${widget.notattempted} Tidak terjawab dari ${widget.totalQuestion} Pertanyaan"),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Category()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12,horizontal: 54),
                  child: Text("Pilih Kategori", style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.deepPurpleAccent
                  ),
                )
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12,horizontal: 54),
                  child: Text("Kembali Ke Beranda", style: TextStyle(
                    fontSize: 15,
                    color: Colors.purpleAccent
                  ),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.purpleAccent, width: 2),
                    color: Colors.white
                  ),
                )
              )
            ],
           ),
         )
      ),
    );
  }
}