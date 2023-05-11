import 'package:flutter/material.dart';

class ImgWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 140,
        width: 140,
        margin: EdgeInsets.only(top: 60),
        child: Image.asset("assets/images/lock.png"),
      ),
    );
  }
}
