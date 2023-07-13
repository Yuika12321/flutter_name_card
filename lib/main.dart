import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var isVisible = false;
  var portfolio = ['랜덤숫자게임', '타이머', '요일별 급식메뉴', '박스오피스 랭킹', '홈페이지'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              side: BorderSide(color: Colors.grey),
            ),
            elevation: 10.0,
            margin: const EdgeInsets.fromLTRB(10, 30, 10, 10),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: 10,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(90)),
                    width: 120,
                    height: 120,
                    child: const Image(
                      image: AssetImage('images/Mary.png'),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 5,
                  ),
                  const Text(
                    '오승보',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 5,
                  ),
                  const Text(
                    '2022230@sungil-i.kr',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 5,
                  ),
                  const Text(
                    'studnet',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 8,
                  ),
                  MaterialButton(
                    onPressed: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                    child: const Text(
                      'portfolio',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Container(
                      color: Colors.green,
                      width: double.infinity,
                      height: 400,
                      child: SingleChildScrollView(
                        child: txt(portfolio: portfolio),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class txt extends StatelessWidget {
  const txt({
    super.key,
    required this.portfolio,
  });

  final List<String> portfolio;

  @override
  Widget build(BuildContext context) {
    Widget _mybox(String txt) {
      return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      );
    }

    return Column(
      children: [
        for (var i = 0; i < portfolio.length; i++)
          Text(
            portfolio[i],
            style: const TextStyle(fontSize: 20),
          ),
      ],
    );
  }
}
