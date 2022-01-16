import 'package:flutter/material.dart';
import 'package:tourx_ui_c4/tabs/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const IndexOne(),
    const Text(
      'Index 1: Business',
    ),
    const Text(
      'Index 2: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey,
            body: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.09,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: BottomNavigationBar(
                enableFeedback: false,
                backgroundColor: Colors.white,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      backgroundColor: const Color(0xffFD4416),
                      icon: const Icon(
                        Icons.home_outlined,
                        color: Color(0xffFD4416),
                      ),
                      activeIcon: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffFD4416),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.home,
                            size: 30,
                            color: Colors.white,
                          )),
                      label: ""),
                  BottomNavigationBarItem(
                      backgroundColor: const Color(0xffFD4416),
                      icon: const Icon(
                        Icons.search,
                        color: Color(0xffFD4416),
                      ),
                      activeIcon: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffFD4416),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.search_outlined,
                            size: 30,
                            color: Colors.white,
                          )),
                      label: ""),
                  BottomNavigationBarItem(
                      backgroundColor: const Color(0xffFD4416),
                      icon: const Icon(
                        Icons.person,
                        size: 20,
                        color: Color(0xffFD4416),
                      ),
                      activeIcon: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xffFD4416),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.person_outline_outlined,
                            size: 30,
                            color: Colors.white,
                          )),
                      label: ""),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.amber[800],
                onTap: _onItemTapped,
              ),
            )));
  }
}
