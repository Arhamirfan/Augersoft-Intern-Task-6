import 'package:flutter/material.dart';
import 'package:intern_task_6/Components/ItemsData.dart';
import 'package:intern_task_6/Components/Top_rounded.dart';
import 'package:intern_task_6/Screens/Screen3_productdetail.dart';

import '../Constants.dart';

class DetailPage extends StatefulWidget {
  final ItemDataClass bean;

  DetailPage(this.bean);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              _SilverMarginTop(),
              SliverToBoxAdapter(
                child: _buildDetail(),
              )
            ],
          ),
          //top appbar icons .. back and shopping cart
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: SizedBox(
              height: kToolbarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ProductDetail();
                          },
                        ));
                      },
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _SilverMarginTop() {
    return SliverPersistentHeader(
      delegate: PageTop_round(
        expanded_height,
        widget.bean,
        rounded_container_height,
      ),
    );
  }

  Widget _buildDetail() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildUserInfo(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            child: Text(
              "Text\nText",
              style: TextStyle(
                color: Colors.black38,
                height: 1.4,
                fontSize: 14,
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //     left: 15,
          //     right: 30,
          //     top: 10,
          //     bottom: 10,
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       Text(
          //         "Featured",
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontWeight: FontWeight.bold,
          //           fontSize: 18,
          //           letterSpacing: 1.6,
          //         ),
          //       ),
          //       Text(
          //         "View all",
          //         style: TextStyle(
          //           color: Colors.deepOrange,
          //           fontSize: 16,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(height: 120, child: FeaturedWidget()),
          // Padding(
          //   padding: EdgeInsets.symmetric(
          //     vertical: 15,
          //     horizontal: 15,
          //   ),
          //   child: Text(
          //     "The balearic Lsnaled,The Lsnaled,The balea balearic Lsnaled,"
          //     "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
          //     "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
          //     "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
          //     "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
          //     "The balearic Lsnaled,Lsnaled,The balea ",
          //     style: TextStyle(
          //       color: Colors.black38,
          //       height: 1.4,
          //       fontSize: 14,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              widget.bean.imageURL,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.bean.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "\$ " + widget.bean.price,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

// class FeaturedWidget extends StatelessWidget {
//   List<ItemDataClass> _list = ItemDataClass.generate_items_list();
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: EdgeInsets.symmetric(
//         horizontal: 15,
//       ),
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {
//         return Container(
//           height: 100,
//           width: 120,
//           margin: EdgeInsets.only(
//             right: 15,
//           ),
//           child: Image.asset(
//             _list[index].imageURL,
//             fit: BoxFit.cover,
//           ),
//         );
//       },
//       itemCount: _list.length,
//     );
//   }
// }
