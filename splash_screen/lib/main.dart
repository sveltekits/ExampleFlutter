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
              color: Colors.orange, // Color(0xFFF99231)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              /**
             * Image 위젯의 5가지 생성자
             * 
             * 1. Image 생성자 :: ImageProvider라는 또 다른 위젯에서 이미지를 그린다.
             * 2. Image.asset 생성자 :: 앱에 저장된 asset 파일로 이미지를 그린다.
             *    (pubspec.yaml 파일에 assets 폴더를 지정해야 한다.)
             * 3. Image.network 생성자 :: URL를 통해서 이미지를 그린다.
             * 4. Image.file 생성자 :: 파일을 통해서 이미지를 그린다.
             * 5. Image.memory 생성자 :: 메모리에서 직접 이미지를 그린다.
             */
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Cat-Dog.png',
                      width: 200,
                    ),
                    const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                        Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
