import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          bottom: const TabBar(
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 24.0),
              unselectedLabelStyle: TextStyle(fontSize: 18.0),
              tabs: [
                Tab(
                  text: 'Log out',
                ),
                Tab(
                  text: 'Settings',
                )
              ]),
          backgroundColor: Colors.orange,
          title: const Text(
            'Welcome there',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Center(
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset('images/back.png'),
              ),
            ),
            const Center(
              child: Text(
                'Settings',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
