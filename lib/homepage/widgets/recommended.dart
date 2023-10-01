import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  const Recommended({super.key});

  @override
  State<Recommended> createState() => _RecommendedState();
}

List recommend = [
  {
    'image': 'assets/woman.png',
    'title': 'Highlife Trouser',
    'design': 'Trouser',
    'price': '#2,000',
    'splash': '#4,000'
  },
  {
    'image': 'assets/hoodie.png',
    'title': 'Grey Hoodie',
    'design': 'Hoodie',
    'price': '#10,000',
    'splash': '#22,000'
  },
  {
    'image': 'assets/skate.png',
    'title': 'White Tee',
    'design': 'T-Shirt',
    'price': '#3,000',
    'splash': '#7,500'
  },
  {
    'image': 'assets/cleanser.png',
    'title': 'Coryx Cleanser',
    'design': 'Cleanser',
    'price': '#4,000',
    'splash': '#8,000'
  },
];

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: recommend.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 2.2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.grey.shade300),
                child: Image.asset(
                  recommend[index]['image'],
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                recommend[index]['title'],
                style: TextStyle(color: Colors.grey.shade500),
              ),
              Text(
                recommend[index]['design'],
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        recommend[index]['price'],
                        style: const TextStyle(fontSize: 17),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        recommend[index]['splash'],
                        style: const TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.red,
                            decorationThickness: 2),
                      )
                    ],
                  ),
                  const Icon(Icons.favorite_border)
                ],
              )
            ],
          );
        });
  }
}
