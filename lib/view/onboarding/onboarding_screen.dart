import 'package:flutter/material.dart';
import 'package:paybill/utils/const.dart';
import 'package:paybill/view/home.dart';
import 'package:paybill/view/onboarding/components/stack_of_cards.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: primaryColor,
        child: ListView(
          children: [
            const Center(
              child: Text(
                "Taupex",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 350, child: StackOfcardsScreen()),
            const Center(
              child: Text(
                "This application allows you to pay bills in one place",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3,
                    width: 30,
                    color: Colors.grey,
                    child: const Text(''),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 3,
                    width: 30,
                    color: Colors.white,
                    child: const Text(''),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 45, 50, 195),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/facebook1.png',
                      height: 25,
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/google1.png',
                      height: 23,
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    const Text(
                      'Google',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 23,
                      color: primaryColor,
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(color: primaryColor, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'By logging into account you are agreeing with our',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Terms & Conditions',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey),
                    ),
                    Text(
                      'and',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
