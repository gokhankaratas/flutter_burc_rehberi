import 'package:burcrehberi/burc_listesi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BurcRehberi());
}

class BurcRehberi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Burç Rehberi',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BurcListesi()
    );
  }
}
