import 'package:flutter/material.dart';

class all_Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gallary',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Text(
          'Noting to display here',
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ),
    );
  }
}
