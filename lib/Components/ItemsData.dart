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
