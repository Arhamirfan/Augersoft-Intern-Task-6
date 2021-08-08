import 'package:flutter/material.dart';

class ItemDataClass {
  final String title;
  final String imageURL;
  final String description;
  final String price;
  final String wearBy;

  ItemDataClass(
      {required this.title,
      required this.imageURL,
      required this.price,
      required this.description,
      required this.wearBy});

  static List<ItemDataClass> generate_items_list() {
    return [
      ItemDataClass(
          title: 'Women Blue Denim',
          imageURL: 'images/pic1.png',
          price: '30.00',
          description: 'Description for',
          wearBy: 'female'),
      ItemDataClass(
          title: 'Man Blue Denim',
          imageURL: 'images/pic2.png',
          price: '32.99',
          description: 'Description for',
          wearBy: 'male'),
      ItemDataClass(
          title: 'Brook Taverner Overcoat',
          imageURL: 'images/pic3.png',
          price: '59.99',
          description: 'Description for',
          wearBy: 'male'),
      ItemDataClass(
          title: 'Mrytle Fur Coat',
          imageURL: 'images/pic4.png',
          price: '22.00',
          description: 'Description for',
          wearBy: 'female'),
      ItemDataClass(
          title: 'Kingsman Porter Suit',
          imageURL: 'images/pic5.png',
          price: '49.99',
          description: 'Description for',
          wearBy: 'female')
    ];
  }
}

class Colours {
  String colorname;
  Color colour;

  Colours({required this.colorname, required this.colour});

  static List<Colours> generate_colours_list() {
    return [
      Colours(colorname: 'Grey', colour: Colors.grey),
      Colours(colorname: 'Black', colour: Colors.black),
      Colours(colorname: 'Blue', colour: Colors.blue),
      Colours(colorname: 'Red', colour: Colors.red)
    ];
  }
}

class Size {
  String size;

  Size({required this.size});

  static List<Size> generate_size() {
    return [
      Size(size: 'S'),
      Size(size: 'M'),
      Size(size: 'L'),
      Size(size: 'XL'),
      Size(size: 'XXL'),
    ];
  }
}
