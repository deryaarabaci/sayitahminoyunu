import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayitahmin/SonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  @override
  _TahminEkraniState createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {

  var tfTahmin = TextEditingController();
  int rastgeleSayi = 0;
  int kalanHak = 10;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    rastgeleSayi = Random().nextInt(101);
    print("Rastgele Sayı : $rastgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Tahmin Ekranı"),
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text("Kalan Hak : $kalanHak",style: TextStyle(color: Colors.indigo,fontSize: 30, fontFamily: 'DancingScript'),),
      Text("İpucu :  $yonlendirme",style: TextStyle(color: Colors.black54,fontSize: 26, fontFamily: 'DancingScript'),),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          controller: tfTahmin,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: "Tahmin",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            )
          ),
        ),
      ),
      SizedBox(
        width: 180,
        height: 60,
        child: RaisedButton(
            child: Text("Tahmin Et", style: TextStyle(fontFamily: 'DancingScript',fontSize: 24),),
            color: Colors.lightBlue,
            textColor: Colors.white,
            onPressed: (){
              setState(() {
                kalanHak = kalanHak - 1;
              });
              int tahmin = int.parse(tfTahmin.text);
              if(tahmin == rastgeleSayi){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(sonuc: true)));
                return;
              }
              if(tahmin > rastgeleSayi){
                setState(() {
                  yonlendirme = "Tahmini Azalt ↓";
                });
              }
              if(tahmin < rastgeleSayi){
                setState(() {
                  yonlendirme = "Tahmini Arttır ↑";
                });
              }
              if(kalanHak == 0){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(sonuc: false)));
              }
              tfTahmin.text = "";
            }
        ),
      )
    ],
    ),
    ),
    );
  }
}
