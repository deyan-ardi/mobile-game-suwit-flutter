import 'dart:math';
import 'package:flutter/material.dart';
import 'package:game_suwit/all_result.dart';
import 'all_result.dart';

class GameResult extends StatelessWidget {
  GameResult({
    @required this.pilihan,
    @required this.nama,
  });
  final String pilihan;
  final String nama;

  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(100);
    String dCom;
    String result;

    if (randomNumber >= 0 && randomNumber <= 33) {
      dCom = "Batu";
    } else if (randomNumber >= 34 && randomNumber <= 66) {
      dCom = "Gunting";
    } else {
      dCom = "Kertas";
    }

    if (pilihan == dCom) {
      result = "Permainan Seri";
    } else if (pilihan == "Batu" && dCom == "Kertas") {
      result = "Komputer Menang";
    } else if (pilihan == "Batu" && dCom == "Gunting") {
      result = "Anda Menang";
    } else if (pilihan == "Kertas" && dCom == "Batu") {
      result = "Anda Menang";
    } else if (pilihan == "Kertas" && dCom == "Gunting") {
      result = "Komputer Menang";
    } else if (pilihan == "Gunting" && dCom == "Kertas") {
      result = "Anda Menang";
    } else if (pilihan == "Gunting" && dCom == "Batu") {
      result = "Komputer Menang";
    } else {
      result = "Error";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('GAME RESULT'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.redAccent, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllResult(nama: nama)),
            );
          },
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),
            Container(
              child: Image.asset("assets/result.png",
                  width: 250.0, fit: BoxFit.cover),
            ),
            SizedBox(height: 50),
            Text(
              nama.toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Center(
              child: Text(
                result.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.cyan)),
                  color: Colors.cyan,
                  textColor: Colors.red,
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 60, right: 60),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AllResult(nama: nama)),
                    );
                  },
                  child: Text(
                    "Main Lagi",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
