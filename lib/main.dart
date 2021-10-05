import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debug 배너 제거
      debugShowCheckedModeBanner: false,
      // 페이지 타이틀
      title: 'Instagram',

      // 막대 배경색
      theme: ThemeData(
          // 선택하지 않는 모든 아이콘 색
          iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
          appBarTheme: AppBarTheme(
            // 막대 배경색
            elevation: 1,
            color: Colors.white,
            // Plus 버튼 색상 설정
            iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
          ),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  // 홈페이지 state
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 현재 페이지 선언
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 홈페이지 호출
      body: HomePage(),
      // 버튼 네비게이션
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          // 띄워쓰기 Spacer 불러옴
          Spacer(),
          // 자식 컴포넌트
          IconButton(
            // 홈 버튼 아이콘
            icon: Icon(
              Icons.home,
              // 아이콘 컬러
              // current Page 가 ture일때  false 일 떄를 설정
              color: currentPage == 0
                  ? Color.fromRGBO(203, 73, 101, 1)
                  : Color.fromRGBO(40, 40, 40, 1),
            ),
            onPressed: () {
              setState(() {
                // 첫번째 상태로 선언
                currentPage = 0;
              });
            },
          ),
          Spacer(),
          IconButton(
            // 검색 아이콘
            icon: Icon(
              Icons.search,
              color: currentPage == 1
                  ? Color.fromRGBO(203, 73, 101, 1)
                  : Color.fromRGBO(40, 40, 40, 1),
            ),
            onPressed: () {
              setState(() {
                currentPage = 1;
              });
            },
          ),
          Spacer(),
          IconButton(
            // 미디어 아이콘
            icon: Icon(Icons.ondemand_video),
            onPressed: () {},
          ),
          Spacer(),
          IconButton(
            // Travel 아이콘
            icon: Icon(Icons.card_travel),
            onPressed: () {},
          ),
          Spacer(),
          IconButton(
            // 유저 아이콘
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
          Spacer(),
        ],
      )),
    );
  }
}
