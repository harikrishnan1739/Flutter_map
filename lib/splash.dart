import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'currentLocation.dart';
// ignore: unused_import

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  @override
  void initState() {
    gotologin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 105, 97),
      body: Padding(
        padding: const EdgeInsets.only(top: 300.0),
        child: Column(
          children: [
            Center(
              // ignore: sized_box_for_whitespace
              child: Container(
                width: 200,
                height: 200,
                child: Lottie.network(
                    'https://assets5.lottiefiles.com/packages/lf20_QsgILl/Location.json',
                    height: 200,
                    width: 200,
                    alignment: Alignment.center),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> gotologin() async {
    await Future.delayed(const Duration(seconds: 5));
    // ignore: use_build_context_synchronously
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => const CurrentLocation(),
    ));
  }
}
