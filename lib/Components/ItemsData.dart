class ItemDataClass {
  final String title;
  final String imageURL;
  final String description;
  final String price;
  final String wearBy;

  ItemDataClass(
      {required this.title,
      required this.imageURL,
      required this.description,
      required this.price,
      required this.wearBy});

  static List<ItemDataClass> generate_items_list() {
    return [
      ItemDataClass(
          title: 'Women Blue Denim',
          imageURL: 'images/pic1.png',
          description: 'Description for',
          price: '30.00',
          wearBy: 'female'),
      ItemDataClass(
          title: 'Man Blue Denim',
          imageURL: 'images/pic2.png',
          description: 'Description for',
          price: '32.99',
          wearBy: 'male'),
      ItemDataClass(
          title: 'Brook Taverner Overcoat',
          imageURL: 'images/pic3.png',
          description: 'Description for',
          price: '59.99',
          wearBy: 'male'),
      ItemDataClass(
          title: 'Mrytle Fur Coat',
          imageURL: 'images/pic4.png',
          description: 'Description for',
          price: '22.00',
          wearBy: 'female'),
      ItemDataClass(
          title: 'Kingsman Porter Suit',
          imageURL: 'images/pic5.png',
          description: 'Description for',
          price: '49.99',
          wearBy: 'female')
    ];
  }
}
