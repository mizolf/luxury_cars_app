import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:luxury_cars_app/models/car.dart';
import 'package:luxury_cars_app/screens/car_details_screen.dart';
import 'package:luxury_cars_app/util/car_home_info.dart';
import 'package:luxury_cars_app/util/recommended_car_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Car> _cars = cars;
  List<Car> _recommended = recommended;
  final _scrollController = ScrollController();
  int _activeIndex = 0;

  Widget _searchBar() {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final scrollOffset = _scrollController.offset;
    final itemWidth = 332.0;
    final newIndex = (scrollOffset / itemWidth).round();

    if (newIndex != _activeIndex) {
      setState(() {
        _activeIndex = newIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey.shade300,
            foregroundColor: Colors.black,
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
            ]),
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey.shade300, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _searchBar(),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: cars.length,
                      itemBuilder: (context, index) {
                        return CarHomeInfo(cars[index]);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: AnimatedSmoothIndicator(
                      activeIndex: _activeIndex,
                      count: cars.length,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        activeDotColor: Colors.black,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Recomendation',
                      style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: _recommended.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const CarDetailsScreen(),
                              ));
                            },
                            child: RecommendedCarInfo(_recommended[index])),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
