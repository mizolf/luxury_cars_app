import 'package:flutter/material.dart';
import 'package:luxury_cars_app/models/car.dart';

class RecommendedCarInfo extends StatelessWidget {
  final Car car;
  const RecommendedCarInfo(this.car, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/imgs/audirs6side.png',
              height: 100,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/star.png',
                  height: 15,
                ),
                const SizedBox(width: 5),
                Text(
                  "${car.rating}",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  car.brand + " " + car.model,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Row(
                  children: [
                    Image.asset(
                      color: const Color.fromARGB(255, 255, 186, 59)
                          .withOpacity(0.7),
                      'assets/icons/dollar-symbol.png',
                      height: 15,
                    ),
                    Text(
                      "${car.price}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
