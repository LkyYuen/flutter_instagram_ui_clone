import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui_clone/libs/colors.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:date_format/date_format.dart';

showUtilDialog(BuildContext context, value) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          content: Row(
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(width: 20),
              Text(value),
            ],
          )
        ),
      );
    }
  );
}

// showUtilDialog(BuildContext context, value) {
//   showDialog(
//     context: context,
//     barrierDismissible: true,
//     builder: (context) {
//       return AlertDialog(
//         content: Row(
//           children: <Widget>[
//             CircularProgressIndicator(),
//             SizedBox(width: 20),
//             Text(value),
//           ],
//         )
//       );
//     }
//   );
// }

// showToast(String value, { bool isLong = false }) {
//   Fluttertoast.showToast(
//     msg: value,
//     toastLength: isLong ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 1,
//     backgroundColor: Colors.grey[300],
//     textColor: Colors.black,
//     fontSize: 16.0
//   );
// }

Container horizontalLine() {
  return Container(
    margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
    height: 0.5,
    color: Colors.black,
  );
}

Center loadingIndicator() {
  return Center(
    child: CircularProgressIndicator()
  );
}

Center noDataIndicator(value) {
  return Center(
    child: Text(value,  style: TextStyle(fontSize: 16))
  );
}

Container greySpacer() {
  return Container(
    height: 15.0,
    color: Colors.grey[300],
  );
}

Container customButton(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    height: 60.0,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7.0),
      border: Border.all(color: Colors.white),
      color: Colors.white,
    ),
    child: RaisedButton(
      elevation: 10.0,
      onPressed: () {
        // Validate returns true if the form is valid, otherwise false.
        // if (_formKey.currentState.validate()) {
        //   submitForm();
        // }
      },
      // onPressed: () => Navigator.pushNamed(context, homeViewRoute),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0),),
      child: Text('Send', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0,),),
    ),
  );
}

Container tagBox(value) {
  return Container(
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      border: Border.all(
        width: 0.5,
        color: subtitleColor
      )
    ),
    child: Text(value),
  );
}

// ListTile expensesListTile(data) {
//   return ListTile(
//     leading: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget>[
//         Text(formatDate(DateTime.parse(data.transDate), [dd]), style: TextStyle(fontSize: 14),),
//         Text(formatDate(DateTime.parse(data.transDate), [M]), style: TextStyle(fontSize: 14),),
//       ],
//     ),
//     title: Text(data.remark, style: TextStyle(fontSize: 16),),
//     trailing: Text(data.amount, style: TextStyle(fontSize: 16),),
//   );
// }

// GridView.builder(
//   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//   padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
//   itemCount: recursiveList.length,
//   itemBuilder: (BuildContext context, int index) {
//     var data = recursiveList[index];
//     return GestureDetector(
//       // onTap: () => Navigator.pushNamed(context, facultyRoute, arguments: facultyList[index] ),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color(0xFF1C2D61),
//           borderRadius: BorderRadius.circular(10.0),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey,
//               blurRadius: 5.0,
//             ),
//           ]
//         ),
//         margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0),
//         padding: EdgeInsets.all(10.0),
//         child: Center(
//           child: Text(data.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0), textAlign: TextAlign.center,),
//         ),
//       ),
//     );
//   }
// )