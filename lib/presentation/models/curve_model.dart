class CurveModel {
  final String image;
  final String title;
  final String design;
  final int price;
  final int slashed;

  CurveModel(
      {required this.image,
      required this.title,
      required this.design,
      required this.price,
      required this.slashed});
}

List<CurveModel> curvemodel = [
  CurveModel(
      image: 'assets/png/cleanser.png',
      title: 'Coryx Cleanser',
      design: 'Gown',
      price: 9000,
      slashed: 15000),
  CurveModel(
      image: 'assets/png/woman.png',
      title: 'Grey Hoodie',
      design: 'Hoodie',
      price: 5000,
      slashed: 3000),
  CurveModel(
      image: 'assets/png/woman4.png',
      title: 'Blue Top',
      design: 'Sexy Silk',
      price: 5500,
      slashed: 9500),
  CurveModel(
      image: 'assets/png/lady.png',
      title: 'Coryx Cleanser',
      design: 'Cleanser',
      price: 15000,
      slashed: 11500),
];
