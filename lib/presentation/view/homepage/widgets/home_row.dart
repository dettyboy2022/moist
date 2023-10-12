// import 'package:flutter/material.dart';
// import 'package:moistwears/presentation/view/homepage/categories/women.dart';
// import 'package:moistwears/presentation/view/homepage/categories/curve.dart';
// import 'package:moistwears/presentation/view/homepage/categories/beauty.dart';

// class HomeRow extends StatefulWidget {
//   const HomeRow({super.key});

//   @override
//   State<HomeRow> createState() => _HomeRowState();
// }

// List categories = [
//   {'image': 'assets/png/women.png', 'text': 'Women'},
//   {'image': 'assets/png/beauty.png', 'text': 'Beauty'},
//   {'image': 'assets/png/curve.png', 'text': 'Curve'},
//   {'image': 'assets/png/kids.png', 'text': 'Kids'},
//   {'image': 'assets/png/men.png', 'text': 'Men'},
//   {'image': 'assets/png/Plus.png', 'text': 'Plus'},
// ];

// List<Widget> categoriesPages = [
//   const WomenItems(),
//   const BeautyItems(),
//   const CurveItems()
// ];

// class _HomeRowState extends State<HomeRow> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//           children: categories
//               .map((e) => Padding(
//                     padding: const EdgeInsets.only(right: 15),
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder:  (context)=> categoriesPages[widget.]))
//                         // Navigator.push(
//                         //     context,
//                         //     MaterialPageRoute(
//                         //         builder: (context) => const WomenItems()));
//                       },
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 80,
//                             width: 80,
//                             child: Image.asset(
//                               e['image'],
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                           Text(
//                             e['text'],
//                             style: const TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.w500),
//                           )
//                         ],
//                       ),
//                     ),
//                   ))
//               .toList()),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:moistwears/presentation/view/homepage/categories/women.dart';
import 'package:moistwears/presentation/view/homepage/categories/beauty.dart';
import 'package:moistwears/presentation/view/homepage/categories/curve.dart';
import 'package:moistwears/presentation/view/homepage/categories/men.dart';
import 'package:moistwears/presentation/view/homepage/categories/plus.dart';
import 'package:moistwears/presentation/view/homepage/categories/kids.dart';


class HomeRow extends StatefulWidget {
  const HomeRow({super.key});

  @override
  State<HomeRow> createState() => _HomeRowState();
}

List<Map<String, dynamic>> categories = [
  {'image': 'assets/png/women.png', 'text': 'Women'},
  {'image': 'assets/png/beauty.png', 'text': 'Beauty'},
  {'image': 'assets/png/curve.png', 'text': 'Curve'},
  {'image': 'assets/png/kids.png', 'text': 'Kids'},
  {'image': 'assets/png/men.png', 'text': 'Men'},
  {'image': 'assets/png/Plus.png', 'text': 'Plus'},
];

List<Widget> categoriesPages = [
  const WomenItems(),
  const BeautyItems(),
  const CurveItems(),
  const KidsItem(),
  const MenItem(),
  const PlusItem(),
];

class _HomeRowState extends State<HomeRow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories
            .asMap()
            .entries
            .map(
              (entry) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => categoriesPages[entry.key],
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          entry.value['image'],
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        entry.value['text'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
