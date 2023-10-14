class Items {
  final String image;
  final String title;
  final String design;
  final int price;
  final int slashed;

  Items(
      {required this.image,
      required this.title,
      required this.design,
      required this.price,
      required this.slashed});
}

List<Items> recommend = [
  Items(
      image: 'assets/woman.png',
      title: 'Highlife Trouser',
      design: 'Trouser',
      price: 6000,
      slashed: 4000),
  Items(
      image: 'assets/hoodie.png',
      title: 'Grey Hoodie',
      design: 'Hoodie',
      price: 5000,
      slashed: 3000),
  Items(
      image: 'assets/skate.png',
      title: 'White Tee',
      design: 'T- Shirt',
      price: 10000,
      slashed: 7000),
  Items(
      image: 'assets/cleanser.png',
      title: 'Coryx Cleanser',
      design: 'Cleanser',
      price: 15000,
      slashed: 11500),
  Items(
      image: 'assets/png/woman2.png',
      title: 'White Tee',
      design: 'T- Shirt',
      price: 10000,
      slashed: 7000),
  Items(
      image: 'assets/jpg/smallie.jpg',
      title: 'Coryx Cleanser',
      design: 'Cleanser',
      price: 15000,
      slashed: 11500),
];
