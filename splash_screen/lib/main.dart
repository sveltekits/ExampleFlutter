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
    // build :: 위젯의 UI 구성(결정)한다.
    return MaterialApp(
      title: 'Splash Screen', // 앱 이름
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Container(
          /**
             * Container는 decoration이라는 네임드 파라미터를 제공한다.
             * decoration이라는 매개변수는 BoxDecoration 클래스를 사용하게 되는데
             * BoxDecoration의 매개변수를 통해서 배경색, 테두리 색상, 테두리 두께 등
             * 컨테이너의 여러가지 UI 요소를 적용할 수 있다.
             */
          decoration: const BoxDecoration(
            color: Colors.orange,
          ),
          child: const Center(
            /**
             * Center : 중앙정렬 위젯
             */
            child: Text('Splash Screen'),
          ),
        ),
      ),
    );
  }
}
