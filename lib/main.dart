import 'package:flutter/material.dart';
import 'onboarding.dart'; // onboarding.dart import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingPage(), // onboarding.dart 파일의 OnBoardingPage()를 실행하도록 지정
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold 위젯을 불러와 AppBar를 만듬
      appBar: AppBar(
        // Flutter 2.5 버전부터 한 번 정해지면 바뀌지 않는 데이터를 사용하는 위젯 앞에는 const 키워드를 붙이도록 되어있음
        title: const Text('Main Page'),
      ),
      body: Center(
        // Center 위젯을 불러와 child로 Column 위젯을 불러옴
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Main Screen',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            // ElevatedButton 위젯 생성
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>
                        const OnBoardingPage()), // MyPage 위젯 리턴
              );
            },
            child: const Text('Go to OnBoarding Screen'),
          ),
        ]),
      ),
    );
  }
}
