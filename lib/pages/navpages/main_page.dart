import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/home_pages.dart';
import 'package:flutter_cubit/pages/navpages/search_page.dart';

import 'bar_item_page.dart';
import 'my_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];

  void onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTab,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(label: "Домой", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: "Пaнель", icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: "Поиск", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: ("Я"), icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
