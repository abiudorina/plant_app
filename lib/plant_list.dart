import 'package:flutter/material.dart';

class PlantList extends StatefulWidget {
  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 350,
          child: ListView(
            padding: EdgeInsets.only(left: 25),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getPlantCard('imgPath', '225', 'SomePlant', 'Cabbage')
            ],
          ),
        )
      ],
    );
  }

  getPlantCard(
      String imgPath, String price, String plantType, String plantName) {
    return Stack(
      children: <Widget>[
        Container(
          height: 325,
          width: 225,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff399D63),
            ),
          ),
        )
      ],
    );
  }
}
