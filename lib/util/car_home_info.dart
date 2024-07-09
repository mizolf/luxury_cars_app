import 'package:flutter/material.dart';
import 'package:luxury_cars_app/models/car.dart';

class CarHomeInfo extends StatelessWidget {
  final Car car;

  const CarHomeInfo(this.car, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: const Color.fromARGB(230, 2, 11, 26),
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/imgs/porsche1.png',
                height: 120,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  car.brand + " " + car.model,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_rounded,
                      color: Colors.white54,
                    ),
                    Text(
                      car.location,
                      style: const TextStyle(color: Colors.white54),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
