import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {

  bool sonuc;
  SonucEkrani({this.sonuc});

  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Sonuç Ekranı"),
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      widget.sonuc ? Image.asset("resimler/mutlu.png") : Image.asset("resimler/uzgun.png"),
       Text(widget.sonuc ? "Kazandınız!" : "Kaybettiniz!",style: TextStyle(color: Colors.indigo,fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'DancingScript'),),
      SizedBox(
        width: 180,
        height: 60,
        child: RaisedButton(
            child: Text("Tekrar Oyna", style: TextStyle(fontFamily: 'DancingScript',fontSize: 24),),
            color: Colors.lightBlue,
            textColor: Colors.white,
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      )
    ],
    ),
    ),
    );
  }
}
