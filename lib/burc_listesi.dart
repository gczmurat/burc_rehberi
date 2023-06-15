import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:burc_rehberi/data/strings.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;

  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burçlar Listesi"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(listelenenBurc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }
}

List<Burc> veriKaynaginiHazirla() {
  List<Burc> gecici = [];
  for (int i = 0; i < 12; i++) {
    Burc eklenecekBurc = Burc(
        Strings.BURC_ADLARI[i],
        Strings.BURC_TARIHLERI[i],
        Strings.BURC_GENEL_OZELLIKLERI[i],
        Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png",
        Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png");
    gecici.add(eklenecekBurc);
  }

  return gecici;
}
