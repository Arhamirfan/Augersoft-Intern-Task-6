import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task_6/Components/Catagory_Data.dart';
import 'package:intern_task_6/Components/ItemsData.dart';
import 'package:intern_task_6/Components/Top_rounded.dart';
import 'package:intern_task_6/Components/Trending_Item_Cards.dart';

import '../Constants.dart';
import 'Screen2_allitems.dart';

List<ItemDataClass> _list = ItemDataClass.generate_items_list();

class TrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductDetail();
  }
}

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: <Widget>[
              _SilverMarginTop(),
              SliverToBoxAdapter(
                child: _Body(),
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
        _list.first,
        rounded_container_height,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Trending',
                style: TextStyle(fontSize: 20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return all_Items();
                    },
                  ));
                },
                child: Text(
                  'View all',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: Container(
            child: mostpopular_trending(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: TextStyle(fontSize: 20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return all_Items();
                    },
                  ));
                },
                child: Text(
                  'View all',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: Container(
            child: Catagory_Data(),
          ),
        ),
      ],
    );
  }
}
