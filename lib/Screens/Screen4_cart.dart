import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task_6/Constants.dart';
import 'package:intern_task_6/Screens/Screen1_trending.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'My Cart',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Container(
            height: MediaQuery.of(context).size.height * .8,
            child: Column(
              children: [
                Text(
                  ' ',
                  style: mlarge_black,
                ),
                Cart_detail('Woman Blue Denim', 'Black', 'L', '30.00',
                    'images/pic1.png'),
                Cart_detail(
                    'Man Blue Denim', 'Blue', 'M', '32.99', 'images/pic2.png'),
                Cart_detail('Brook Overcoat', 'Black', 'XL', '59.99',
                    'images/pic3.png'),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10, left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total :',
                              style: mlarge_grey,
                            ),
                            Text(
                              '\$ 127.90',
                              style: mlarge_black,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          color: Colors.blueAccent,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return ProductDetail();
                              },
                            ));
                          },
                          child: Text(
                            'Check Out',
                            style: mlarge_White,
                          ),
                        ),
                        decoration: roundButtonBlue,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Cart_detail extends StatelessWidget {
  Cart_detail(
      this.title, this.colour, this.size, this.price, this.image_location);
  String title, colour, size, price, image_location;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage(image_location)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    colour + '  .  ' + size,
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            '\$ ' + price,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                GestureDetector(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.grey,
                                  ),
                                  onTap: () {},
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    color: Colors.grey,
                                    child: Text(' 1 '),
                                  ),
                                ),
                                GestureDetector(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
