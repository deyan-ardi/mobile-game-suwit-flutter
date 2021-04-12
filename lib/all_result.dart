import 'package:flutter/material.dart';
import 'package:game_suwit/name_input.dart';
import 'game_result.dart';

// disini akan nambah lingkaran dan segitiga
class AllResult extends StatelessWidget {
  AllResult({@required this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BATU GUNTING KERTAS'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.redAccent, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NameInput()),
            );
          },
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100),
            Container(
              child: Image.asset("assets/select.png",
                  width: 250.0, fit: BoxFit.cover),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyan[50],
                        blurRadius: 8.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  width: 150,
                  margin: const EdgeInsets.only(top: 20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                GameResult(pilihan: "Gunting", nama: nama)),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Gunting",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.cyan,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyan[50],
                        blurRadius: 8.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  width: 150,
                  margin: const EdgeInsets.only(top: 20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                GameResult(pilihan: "Kertas", nama: nama)),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Kertas",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.cyan,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyan[50],
                        blurRadius: 8.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  width: 150,
                  margin: const EdgeInsets.only(top: 20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                GameResult(pilihan: "Batu", nama: nama)),
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Column(
                          children: <Widget>[
                           Text(
                              "Batu",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.cyan,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
