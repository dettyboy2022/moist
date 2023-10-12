import 'package:flutter/material.dart';
import 'package:moistwears/constants/custombar.dart';

class WomenItems extends StatefulWidget {
  const WomenItems({super.key});

  @override
  State<WomenItems> createState() => _CategoriesState();
}

List recommend = [
  {
    'image': 'assets/png/woman2.png',
    'title': 'Highlife Gown',
    'design': 'Gown',
    'price': '#9,000',
    'splash': '#15,000'
  },
  {
    'image': 'assets/png/woman3.png',
    'title': 'Grey Hoodie',
    'design': 'Hoodie',
    'price': '#16,000',
    'splash': '#27,000'
  },
  {
    'image': 'assets/png/woman4.png',
    'title': 'Blue Top',
    'design': 'Sexy Silk',
    'price': '#5,500',
    'splash': '#9,500'
  },
  {
    'image': 'assets/png/lady.png',
    'title': 'Coryx Cleanser',
    'design': 'Cleanser',
    'price': '#6,000',
    'splash': '#9,000'
  },
];

class _CategoriesState extends State<WomenItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Women'),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: recommend.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 2.2,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const AddToCart()));
                  },
                  child: Column(
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
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
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
                  ),
                );
              }),
        ));
  }
}
