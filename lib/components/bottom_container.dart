import 'package:flutter/material.dart';
import '../constants.dart';

class BottomContainer extends StatelessWidget {
  BottomContainer({required this.Bottomcontainertext, required this.onTap});
  VoidCallback onTap;
  String Bottomcontainertext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          Bottomcontainertext,
          style: kLargetextstyle,
        )),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
