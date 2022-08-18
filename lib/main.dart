// Day 4 - Navigation in Flutter
//
// [x] Basic Navigation
// [ ] Navigation with Arguments
// [ ] Navigation exit
// [ ] Navigation exit with data
// [ ] BottomBar + PageView

import 'package:flutter/material.dart';

// main.dart
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuPage(),
    );
  }
}

// menu/pages/menu_page.dart
class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // `Scaffold` represents a screen in a `MaterialApp`
    // In most cases, there is just 1 `Scaffold` per screen
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Page')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Menu Page'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print('Open Home Page');

                  // Open Home Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: const Text('Open Home page'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Open Home Page');

                  // Open Home Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ),
                  );
                },
                child: const Text('Open About page'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// home/pages/home_page.dart
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Center(child: Text('Welcome to home page!')),
    );
  }
}

// about/pages/about_page.dart
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Page')),
      body: const Center(child: Text('Welcome to about page!')),
    );
  }
}
