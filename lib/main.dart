import 'package:flutter/material.dart';

void main() {
  runApp(Tes());
}

class Tes extends StatelessWidget {
  Tes({super.key});

  List<String> menu = ["Soto", "Rawon"];
  List<int> harga = [10000, 15000];

  List<String> gambar = ["assets/soto.jpg", "assets/rawon.jpg"];

  List<String> porsi = ["1 Porsi", "1 Porsi"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Makanan"),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Table(
            border: TableBorder.all(width: 2),
            columnWidths: {
              0: FlexColumnWidth(0.5),
              1: FlexColumnWidth(1.5),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(1),
              4: FlexColumnWidth(1),
            },
            children: [
              // Header
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.orange.shade200,
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("No", textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Gambar", textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Menu", textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Harga", textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Porsi", textAlign: TextAlign.center),
                  ),
                ],
              ),

              // Data menggunakan perulangan
              for (int i = 0; i < menu.length; i++)
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("${i + 1}", textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        gambar[i],
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(menu[i], textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Rp ${harga[i]}",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(porsi[i], textAlign: TextAlign.center),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
