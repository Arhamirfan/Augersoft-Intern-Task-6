import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task_6/Constants.dart';
import 'package:intern_task_6/Screens/detail_page_fullscreen.dart';

class TrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Text(
            '',
            style: TextStyle(fontSize: 25),
          ),
          Expanded(
            flex: 2,
            child: TravelWidget(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trending',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'View all',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )
              ],
            ),
          ),
          Expanded(flex: 1, child: mostpopular_trending())
        ],
      ),
    );
  }
}

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
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    bean.imageURL,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bean.title,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    // Text(
                    //   'Pkr.' + bean.price,
                    //   style: TextStyle(
                    //       fontSize: 25,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.blue),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: _list.length,
    );
  }
}

//display of on start with item details , price and arrow button
class TravelWidget extends StatelessWidget {
  List<ItemDataClass> _list = ItemDataClass.generate_items_list();
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(viewportFraction: 0.9),
      itemBuilder: (context, index) {
        var bean = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30, right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  bean.imageURL,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recommendations',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  Text(
                    bean.title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Pkr.' + bean.price,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 30,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            )
          ],
        );
      },
      itemCount: _list.length,
    );
  }
}
