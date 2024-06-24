import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'YOGA SURYA PRATAMA',
    'UNIKUL KHOLILAH',
    'ERLAN DWIYANTO',
    'ALIYA PUTRI NURAHMANI',
    'DANANG FIA',
  ];
  var listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    const Color.fromARGB(255, 220, 57, 57),
    Colors.indigo,
    Colors.deepPurple,
    const Color.fromARGB(255, 1, 89, 100),
    Colors.blue,
    Color.fromARGB(255, 177, 2, 177)
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 251, 255, 0),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(33, 0, 0, 0),
                  spreadRadius: 30,
                  offset: Offset.fromDirection(-5.5, 60.0),
                  blurRadius: 5)
            ]),
        child: Column(
          children: [
            Text(
              'Apa kabar',
              textDirection: TextDirection.ltr,
            ),
            Text(
              listNama[index % listNama.length],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: listWarna[index % listWarna.length]),
            )
          ],
        ));
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Dunia'),
        ),
        body: Center(
          child: Column(
            children: [teksUtama],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: Icon(Icons.refresh),
          onPressed: teksUtama.state.incrementIndex,
        ),
      )));
}
