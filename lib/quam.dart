import 'package:flutter/material.dart';

void main() {
  runApp(const Quam());
}

class Quam extends StatelessWidget {
  const Quam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Q2(),
    );
  }
}

class Q2 extends StatefulWidget {
  const Q2({super.key});

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  bool isFirst = true;
  bool isSecond = false;

  void toogleContainer() {
    setState(() {
      isFirst = !isFirst;
      isSecond = !isSecond;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: toogleContainer,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: isFirst ? Colors.orange : Colors.white,
                      ),
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Center(
                          child: Text(
                        'Guest',
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [if (isFirst) const Text('First Container;')],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: toogleContainer,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: isSecond ? Colors.orange : Colors.white,
                      ),
                      height: 150,
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Center(
                          child: Text(
                        'Premium',
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [if (isSecond) const Text('Second Container')],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
