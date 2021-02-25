import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter_instagram_ui_clone/libs/colors.dart';
// import 'package:budget_on/widget/Index.dart';
import 'package:flutter_instagram_ui_clone/routes/routes.dart';
import 'package:flutter_instagram_ui_clone/widgets/AppBar.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

const double iconSize = 30;

class _HomePageState extends State<HomePage> {

  var arr = [
    {
      'name': 'oneechan',
    },
    {
      'name': 'oneechan',
    },
    {
      'name': 'oneechan',
    },
    {
      'name': 'oneechan',
    },
    {
      'name': 'oneechan',
    },
    {
      'name': 'oneechan',
    },
    {
      'name': 'oneechan',
    },
    {
      'name': 'oneechan',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // super.build(context);
    return Scaffold(
      appBar: MyAppBar(
        canGoBack: false,
        centerTitle: false,
        title: Text("Instagram"),
        actions: [
          IconButton(icon: Icon(Icons.favorite_border, color: Colors.white,), onPressed: () {},),
          IconButton(icon: Icon(Icons.chat, color: Colors.white,), onPressed: () {},),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 95,
              // color: Colors.red,
              margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
              // padding: EdgeInsets.all(10.0),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: arr.length,
                itemBuilder: (BuildContext context, int index) {
                  var data = arr[index];
                  return Container(
                    margin: EdgeInsets.only(left: index == 0 ? 15 : 0, right: 15),
                    child: Column(
                      children: [
                        CircleAvatar(backgroundColor: Colors.black, radius: 27.5,),
                        SizedBox(height: 5.0,),
                        Flexible(child: Text(data['name'], style: TextStyle(fontSize: 12.5),))
                      ],
                    ),
                  );
                }
              ),
            )
          ],
        )
      )
    );
  }
}

// ListView.builder(
//   shrinkWrap: true,
//   scrollDirection: Axis.vertical,
//   padding: EdgeInsets.all(15.0),
//   // itemCount: 1,
//   itemCount: locations.length,
//   itemBuilder: (BuildContext context, int index) {
//     var data = locations[index];
//     return ListTile(
//       title: Text(data),
//       onTap: () => Navigator.pop(context, data),
//     );
//   }
// )