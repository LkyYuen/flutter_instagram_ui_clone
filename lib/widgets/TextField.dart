import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_instagram_ui_clone/widgets/index.dart';

class TextFieldWidget extends StatefulWidget {

  final String txtLabel;
  final String txtPlaceholder;
  final String txtErrorMsg;
  final bool txtObscureText;
  final TextEditingController txtController;
  final TextInputType txtInputType;

  TextFieldWidget({this.txtLabel, this.txtPlaceholder, this.txtErrorMsg, this.txtObscureText = false, this.txtController, this.txtInputType = TextInputType.text});

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  bool isFocused = false;

  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();

    myFocusNode.addListener(() {
      if (myFocusNode.hasFocus) {
        setState(() { isFocused = true; });
      }
      else {
        setState(() { isFocused = false; });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  String validateEmail(String value) {
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.isEmpty) {
      return widget.txtErrorMsg;
    }
    else if (!regex.hasMatch(value)) {
      return 'Invalid email format!';
    }
    else {
      return null;
    }
  }

  String validateText(String value) {
    if (value.isEmpty) {
      return widget.txtErrorMsg;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   // padding: EdgeInsets.only(left: 15.0, right: 15.0),
    //   margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
    //   child: TextFormField(
    //     style: TextStyle(
    //       color: Colors.black,
    //     ),
    //     decoration: InputDecoration(
    //       labelText: widget.txtLabel,
    //       labelStyle: TextStyle(fontSize: 18),
    //       fillColor: Colors.white,
    //       // focusedBorder: OutlineInputBorder(
    //       //   borderRadius: BorderRadius.circular(10.0),
    //       //   borderSide: BorderSide(
    //       //     color: Colors.blue,
    //       //   ),
    //       // ),
    //       enabledBorder: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(10.0),
    //         borderSide: BorderSide(
    //           color: Colors.blue,
    //         ),
    //       ),
    //     ),
    //     keyboardType: widget.txtInputType,
    //     controller: widget.txtController,
    //     validator: widget.txtInputType == TextInputType.emailAddress ? validateEmail : validateText,
    //   ),
    // );
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            // margin: EdgeInsets.only(bottom: 10.0),
            child: Text(widget.txtLabel, style: TextStyle(fontWeight: FontWeight.normal, color: isFocused ? secondaryThemeColor : Colors.black, fontSize: 16.0))
          ),
          TextFormField(
            // onTap: () => print(widget.txtLabel),
            // onTap: () => setState(() { isFocused = true; }),
            focusNode: myFocusNode,
            decoration: InputDecoration(
              hintText: widget.txtPlaceholder,
              // border: OutlineInputBorder(
              //   borderSide: BorderSide()
              // ),
              focusedBorder: UnderlineInputBorder(
                // borderSide: BorderSide(color: secondaryThemeColor),
              ),
            ),
            keyboardType: widget.txtInputType,
            controller: widget.txtController,
            obscureText: widget.txtObscureText,
            validator: widget.txtInputType == TextInputType.emailAddress ? validateEmail : validateText,
          )
        ]
      )
    );
  }
}
