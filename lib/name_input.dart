import 'package:game_suwit/select_figure.dart';
import 'package:flutter/material.dart';
import 'all_result.dart';

class NameInput extends StatefulWidget {
  @override
  _NameInputState createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {
  String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('BATU GUNTING KERTAS'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.redAccent, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectFigure()),
            );
          },
        ),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              // color: Colors.blue[700],
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.cyan,
                              primaryColorDark: Colors.cyan),
                          child: new TextField(
                            onChanged: (txt) {
                              setState(() {
                                nama = txt.toUpperCase();
                              });
                            },
                            keyboardType: TextInputType.text,
                            maxLength: 12,
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.cyan)),
                                hintText: 'Masukkan Nama',
                                labelText: 'Nama Anda',
                                prefixIcon: const Icon(
                                  Icons.border_color,
                                  color: Colors.cyan,
                                ),
                                prefixText: ' ',
                                suffixStyle:
                                    const TextStyle(color: Colors.cyan)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    side: BorderSide(color: Colors.cyan)),
                color: Colors.cyan,
                textColor: Colors.cyan,
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  if (nama != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AllResult(
                                nama: nama,
                              )),
                    );
                  } else {
                    return ErrorDescription("Mohon diisi semua");
                  }
                },
                child: Text(
                  "Selanjutnya",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
