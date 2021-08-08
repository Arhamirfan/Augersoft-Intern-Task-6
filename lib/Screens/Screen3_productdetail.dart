import 'package:flutter/material.dart';
import 'package:intern_task_6/Components/ItemsData.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List<ItemDataClass> _list = ItemDataClass.generate_items_list();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
