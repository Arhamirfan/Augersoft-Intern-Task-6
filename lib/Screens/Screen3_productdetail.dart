import 'package:flutter/material.dart';
import 'package:intern_task_6/Components/Colourdot_Size.dart';
import 'package:intern_task_6/Components/ItemsData.dart';
import 'package:intern_task_6/Components/Top_rounded.dart';

import '../Constants.dart';
import 'Screen4_cart.dart';

List<ItemDataClass> _list = ItemDataClass.generate_items_list();
List<Colours> _colourlist = [
  Colours(colorname: 'Grey', colour: Colors.grey),
  Colours(colorname: 'Black', colour: Colors.black),
  Colours(colorname: 'Blue', colour: Colors.blue),
  Colours(colorname: 'Red', colour: Colors.red)
];
List<Size> _sizelist = Size.generate_size();

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
                            return Cart();
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Color", style: mlarge_grey),
                SizedBox(
                  height: 80,
                  child: Container(
                    child: Colour_dots(),
                  ),
                ),
                Text("Size", style: mlarge_grey),
                SizedBox(
                  height: 80,
                  child: Container(
                    child: size(),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              child: FlatButton(
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Cart();
                    },
                  ));
                },
                child: Text(
                  'Add to Cart',
                  style: mlarge_White,
                ),
              ),
              decoration: roundButtonBlue,
            ),
          )
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
