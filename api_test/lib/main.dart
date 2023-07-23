import 'package:flutter/material.dart';
import 'service/api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  final _apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SSK API TEST'),
      ),
      body: Row(
        children: [
          ElevatedButton(
            onPressed: () async {
              // API 호출 : 사용자 아이디, 비밀번호 input으로 사용자 정보 확인
              await _apiService.postUser("child0", "child0");

              /* TODO 사용자로부터 입력받은 아이디, 비밀번호 -> 위에 파라미터로 넘겨주기 */

              /* TODO 로그인 처리
               * case 1) 아동의 계정을 성공적으로 받아온 경우 -> "로그인 성공" 띄운 후 앱 내 변수로 저장
               * case 2) 아동의 계정이 아닌 경우 -> "아동의 계정이 아닙니다."
               * case 3) 사용자 계정이 존재하지 않는 경우 -> "존재하지 않는 계정입니다."
              */
            },
            child: const Text('API --POST /user'),
          ),
          ElevatedButton(
            onPressed: () async {
              // API 호출 : 사용자 식별 아이디, 현재 날짜, 현재 시간으로 사용자의 최근 정서 반복 기록 확인
              await _apiService.postEsmTestLog(4, "2023-07-24", "22:00:00");

              /* TODO 저장된 로그인 정보(사용자 식별 아이디), 현재 날짜, 현재 시간 -> 위에 파라미터로 넘겨주기 */
            },
            child: const Text('API --POST /esmTestLog'),
          ),
        ],
      ),
    );
  }
}
