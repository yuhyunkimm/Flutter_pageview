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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://picsum.photos/400/200",
            fit: BoxFit.cover,
            height: kToolbarHeight + MediaQuery.of(context).padding.top,
          ),
          PageView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Image.network(
                "https://picsum.photos/id/${index + 1}/200/300",
                fit: BoxFit.cover,
              );
            },
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text(
                'Around',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
