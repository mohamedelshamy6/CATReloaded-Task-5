import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CAT Task',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff015C92),
          elevation: 20,
          shadowColor: Colors.blueGrey[900],
          centerTitle: true,
          title: const Text(
            'Flutter Circle "Cat Reloaded"',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: const Icon(
            Icons.arrow_back,
            color: Color(0xff88CDF6),
          ),
          actions: const [
            Icon(
              Icons.notifications,
              color: Color(0xff88CDF6),
            ),
          ],
        ),
        body: Column(
          children: [
            Image.network(
                'https://png.pngtree.com/element_our/20190531/ourlarge/pngtree-flat-wind-in-the-discussion-of-the-business-team-image_1288020.jpg'),
            Expanded(
              child: Container(
                color: const Color(0xff015C92),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Members',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      customRow(1, 'Mohamed EL-Helbawy'),
                      customRow(2, 'Ebrahim Shaaban'),
                      customRow(3, 'Mohamed Hussain'),
                      customRow(4, 'Mohamed Elshamy'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  customRow(number, name) => Row(
        children: [
          Text(
            '$number',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Expanded(
            child: Text(
              '$name',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Icon(
            Icons.message,
            color: Color(0xff88CDF6),
          ),
        ],
      );
}
