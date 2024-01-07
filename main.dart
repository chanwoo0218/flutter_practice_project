import 'package:flutter/material.dart';

import 'onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Main Screen',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) =>
                      const OnBoardingPage()),
                  );
                },
                child: Text("Go to on-boarding screen"),
            )
          ],
        ),
      ),
    );
  }
}

