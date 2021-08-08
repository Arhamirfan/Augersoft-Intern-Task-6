import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task_6/Constants.dart';
import 'package:intern_task_6/Screens/Screen2_allitems.dart';

class Catagory_Data extends StatelessWidget {
  const Catagory_Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return all_Items();
                },
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.person),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'Woman',
                          style: mlarge_grey,
                        ),
                      )
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return all_Items();
                },
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.person_outline_sharp),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'Man',
                          style: mlarge_grey,
                        ),
                      )
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        )
      ],
    );
  }
}
