import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget greenContainer1(b) {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(b),
      )),
      child: Text(
        "2 Kandidat",
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(10),
    );
  }

  Widget greenContainer2(b) {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(b),
      )),
      child: Text(
        "3 Kandidat",
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(10),
    );
  }

  Widget greenContainer3(b) {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(b),
      )),
      child: Text(
        "4 Kandidat",
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(10),
    );
  }

  Widget tombol() {
    return Container(
      width: 300,
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
        onPressed: () {},
        child: Text(
          "Pilih jumlah kandidat dan Next ->",
          style: TextStyle(
            color: Color(0xffffffff),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POSTTEST 2 RAHMAT KAMARA"),
        titleTextStyle:
            TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
        backgroundColor: Colors.yellow,
      ),
      body: ListView(
        children: [
          // Column(
          //   children: [myContainer(), greenContainer()],
          // ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              greenContainer1("assets/orang2.png"),
              greenContainer2("assets/orang3.png"),
              greenContainer3("assets/orang4.png"),
            ]),
          ),
          Column(
            children: [tombol()],
          )
        ],
      ),
    );
  }
}
