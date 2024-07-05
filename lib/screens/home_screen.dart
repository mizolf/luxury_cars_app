import 'package:flutter/material.dart';
import 'package:luxury_cars_app/util/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 150,
            automaticallyImplyLeading: false,
            expandedHeight: 100,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            floating: true,
            title: const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Luxury',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    letterSpacing: 2.0),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: GestureDetector(
                  child: Image.asset(
                    'assets/icons/notification.png',
                    height: 24,
                  ),
                ),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [Colors.grey.shade300, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30), // Podesi visinu prema potrebi
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    border: Border.all(color: Colors.black)),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    border: Border.all(color: Colors.black)),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    border: Border.all(color: Colors.black)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
