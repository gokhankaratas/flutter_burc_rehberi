import 'package:burcrehberi/models/burc.dart';
import 'package:burcrehberi/utils/strings.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Burc> burclar = verileriDoldur();

    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
      ),
      body: Container(),
    );
  }

  List<Burc> verileriDoldur() {
    var burcImageUrl="https://raw.githubusercontent.com/emrealtunbilek/flutter_burc_rehberi/master/images/";
    List<Burc> list=[];
    for (int i = 0; i < Strings.BURC_ADLARI.length; i++) {
      Burc burc=Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          burcImageUrl+  Strings.BURC_ADLARI[i].toLowerCase()+"${i+1}.png",
          burcImageUrl+ Strings.BURC_ADLARI[i].toLowerCase()+"_buyuk"+"${i+1}.png"
      );
      list.add(burc);
    }
    return list;
  }
}
