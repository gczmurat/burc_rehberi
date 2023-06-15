import 'package:flutter/material.dart';
import 'package:burc_rehberi/model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({super.key, required Burc this.secilenBurc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              backgroundColor: Colors.purple,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(secilenBurc.burcAdi + " Burcu ve Özellikleri"),
                  background: Image.asset(
                    "images/" + secilenBurc.burcBuyukResim,
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Text(
                    secilenBurc.burcDetayi,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
