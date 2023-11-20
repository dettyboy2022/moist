import 'package:flutter/material.dart';

void main() {
  runApp(const Contain());
}

class Contain extends StatelessWidget {
  const Contain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Con(),
    );
  }
}

class Con extends StatelessWidget {
  const Con({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    // crossAxisSpacing: 10,
                    // mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const Card(
                    margin: EdgeInsets.all(5),
                    elevation: 3,
                    color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                          ),
                          Text(
                              'Trying out something different, flutter latest version is out and this is a game changer for mobile and game developers')
                        ],
                      ),
                    ),
                  );
                }),
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    height: 50,
                    width: double.infinity,
                    color: Colors.red,
                  );
                }),
            ActionChip(
              side: BorderSide.none,
              label: const Text('Click Here'),
              onPressed: () {},
              avatar: const Icon(Icons.home),
            )
          ],
        ),
      ),
    );
  }
}
