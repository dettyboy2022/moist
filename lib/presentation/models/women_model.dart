class WomenModel {
  final String image;
  final String title;
  final String design;
  final int price;
  final int slashed;

  WomenModel(
      {required this.image,
      required this.title,
      required this.design,
      required this.price,
      required this.slashed});
}

List<WomenModel> womenmodel = [
  WomenModel(
      image: 'assets/png/woman2.png',
      title: 'Highlife Gown',
      design: 'Gown',
      price: 9000,
      slashed: 15000),
  WomenModel(
      image: 'assets/png/woman.png',
      title: 'Grey Hoodie',
      design: 'Hoodie',
      price: 5000,
      slashed: 3000),
  WomenModel(
      image: 'assets/png/woman4.png',
      title: 'Blue Top',
      design: 'Sexy Silk',
      price: 5500,
      slashed: 9500),
  WomenModel(
      image: 'assets/png/lady.png',
      title: 'Coryx Cleanser',
      design: 'Cleanser',
      price: 15000,
      slashed: 11500),
];
