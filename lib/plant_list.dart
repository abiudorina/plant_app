import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
              getPlantCard(
                  'assets/whiteplant.png', '25', 'OUTDOOR', 'Aloe Vera')
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
            height: 250,
            width: 225,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: 10),
                        Text(
                          'FROM',
                          style: TextStyle(
                            fontFamily: 'Redhat',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8ac7a4),
                          ),
                        ),
                        Text(
                          '\$' + price,
                          style: TextStyle(
                            fontFamily: 'Redhat',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10)
                  ],
                ),
                Image(
                  image: AssetImage(imgPath),
                  height: 165,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          plantType,
                          style: TextStyle(
                            fontFamily: 'Redhat',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8ac7a4),
                          ),
                        ),
                        Text(
                          plantName,
                          style: TextStyle(
                            fontFamily: 'Redhat',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    SizedBox(width: 25),
                    getPlantCardicons(
                        icon: MaterialCommunityIcons.white_balance_sunny,
                        noBorder: false),
                    SizedBox(width: 15),
                    getPlantCardicons(
                        icon: MaterialCommunityIcons.water_outline,
                        noBorder: false),
                    SizedBox(width: 15),
                    getPlantCardicons(
                        icon: MaterialCommunityIcons.thermometer_lines,
                        noBorder: false),
                    SizedBox(width: 15),
                    getPlantCardicons(
                        icon: MaterialCommunityIcons.help, noBorder: true),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  getPlantCardicons({@required IconData icon, bool noBorder}) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        border: Border.all(
          color: noBorder ? Colors.transparent : Color(0xff8ac7a4),
          style: BorderStyle.solid,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(
        icon,
        color: Colors.white.withOpacity(0.40),
        size: 20,
      ),
    );
  }
}
