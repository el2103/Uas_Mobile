  import 'dart:async';
  import 'package:flutter/material.dart';
  import 'package:news_app_2110020050/pages/profile_page.dart';
  import 'package:news_app_2110020050/pages/otomotive_page.dart';
  import 'package:news_app_2110020050/pages/sport_page.dart';

  void main() {
    runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: SplashScreenPage(),
      );
    }
  }

  class SplashScreenPage extends StatefulWidget {
    @override
    _SplashScreenPageState createState() => _SplashScreenPageState();
  }

  class _SplashScreenPageState extends State<SplashScreenPage> {
    @override
    void initState() {
      super.initState();
      Timer(
        Duration(seconds: 3),
        () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News App',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ),
      );
    }
  }

  class HomePage extends StatefulWidget {
    @override
    _HomePageState createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("News App", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryCard(
                categoryName: "Otomotive News",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Otomotive()),
                  );
                },
                icon: Icons.directions_car,
              ),
              SizedBox(height: 20),
              CategoryCard(
                categoryName: "Sports News",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sports()),
                  );
                },
                icon: Icons.sports,
              ),
              SizedBox(height: 20),
              CategoryCard(
                categoryName: "Card Profile",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CardProfile()),
                  );
                },
                icon: Icons.account_circle,
              ),
            ],
          ),
        ),
      );
    }
  }

  class CategoryCard extends StatelessWidget {
    final String categoryName;
    final VoidCallback onPressed;
    final IconData icon;

    const CategoryCard({
      required this.categoryName,
      required this.onPressed,
      required this.icon,
    });

    @override
    Widget build(BuildContext context) {
      return Card(
        elevation: 5,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            width: 150,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 40,
                ),
                SizedBox(height: 10),
                Text(categoryName),
              ],
            ),
          ),
        ),
      );
    }
  }
