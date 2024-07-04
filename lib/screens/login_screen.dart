import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:luxury_cars_app/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Luxury',
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.white),
              ).animate().fade(duration: 1500.ms).slideY(),
              const SizedBox(
                height: 150,
              ),
              Image.asset(
                'assets/imgs/porsche.png',
              ).animate().fade(duration: 1500.ms).slideY(),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Luxury Cars.',
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                    color: Colors.white),
              ).animate().fade(duration: 1500.ms).slideY(),
              const Text(
                'Enjoy the Premium.',
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                    color: Colors.white),
              ).animate().fade(duration: 1500.ms).slideY(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Find a variety of the car of your dreams, at a good price and quality premium.',
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.white),
              ).animate().fade(duration: 1500.ms).slideY(),
              const SizedBox(
                height: 60,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
                  },
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ).animate().fade(duration: 1500.ms).slideY(),
            ],
          ),
        ),
      ),
    );
  }
}
