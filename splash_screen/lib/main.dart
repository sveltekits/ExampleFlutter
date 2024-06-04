import 'package:flutter/material.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  // StatelessWidget 선언
  // 이전 상호작용의 어떠한 값도 저장하지 않음
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 위젯의 UI 구성
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Splash Screen'),
        ),
      ),
    );
  }
}
