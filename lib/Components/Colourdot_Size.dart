import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ItemsData.dart';

class Colour_dots extends StatelessWidget {
  List<Colours> _list = Colours.generate_colours_list();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var bean = _list[index];
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: bean.colour),
                ))
          ],
        );
      },
      itemCount: _list.length,
    );
  }
}

class size extends StatelessWidget {
  List<Size> _list = Size.generate_size();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var bean = _list[index];
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Container(
                width: 30,
                height: 30,
                child: Text(bean.size),
              ),
            )
          ],
        );
      },
      itemCount: _list.length,
    );
  }
}
