import 'package:flutter/material.dart';
import 'package:plant_app/plant_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  onPressed: () {},
                  mini: true,
                  elevation: 0,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 17,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              'Top Picks',
              style: TextStyle(
                  fontFamily: 'Redhat',
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: TabBar(
              controller: tabController,
              labelColor: Colors.black,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Top',
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Redhat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Outdoor',
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Redhat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Indoor',
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Redhat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Plants',
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Redhat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: PlantList(),
            // child: TabBarView(
            //   controller: tabController,
            // ),
          )
        ],
      ),
    );
  }
}
