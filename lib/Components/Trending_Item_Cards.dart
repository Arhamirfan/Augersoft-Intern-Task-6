import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task_6/Constants.dart';
import 'package:intern_task_6/Screens/detail_page_fullscreen.dart';

import 'ItemsData.dart';

class mostpopular_trending extends StatelessWidget {
  List<ItemDataClass> _list = ItemDataClass.generate_items_list();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var bean = _list[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailPage(bean);
            }));
          },
          child: Card(
            child: Wrap(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5, right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          bean.imageURL,
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      ' ' + bean.title,
                      style: medium_grey,
                    ),
                    Text(
                      ' \$' + bean.price,
                      style: mlarge_black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      itemCount: _list.length,
    );
  }
}
