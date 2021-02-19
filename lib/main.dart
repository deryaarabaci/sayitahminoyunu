import 'package:flutter/material.dart';
import 'package:sayitahmin/TahminEkrani.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sayı Tahmin Oyunu",
              style: TextStyle(color: Colors.indigo,fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'DancingScript'),),
            Image.asset("resimler/zar.png"),
            SizedBox(
              width: 180,
              height: 60,
              child: RaisedButton(
                child: Text("Oyuna Başla",
                  style: TextStyle(fontFamily: 'DancingScript',fontSize: 24),),
                color: Colors.lightBlue,
                textColor: Colors.white,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TahminEkrani()));
                }
              ),
            )
          ],
        ),
      ),

    );
  }
}
