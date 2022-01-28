import 'package:flutter/material.dart';
import 'package:tourx_ui_c4/drawer/settings.dart';
import 'package:tourx_ui_c4/tabs/home_bar.dart';

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
      'Index 1: Search',
    ),
    const Text(
      'Index 2: Profle',
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
            resizeToAvoidBottomInset: false,
            drawer: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(600)),
              child: Drawer(
                backgroundColor: Colors.white,
                elevation: 0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(90, 80, 0, 0),
                      height: 150,
                      width: 10,
                      child: const Text(
                        "TUORX",
                        style:
                            TextStyle(color: Color(0xffFD4416), fontSize: 35),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          color: const Color(0xffFD4416),
                          height: 35,
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(33, 0, 5, 0),
                                child: const Icon(Icons.mail_outline_sharp,
                                    color: Colors.white, size: 35),
                              ),
                              const Text(
                                "Countrolfour@gmail.com",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(24, 80, 0, 0),
                          child: TextButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: const Icon(
                              Icons.person,
                              size: 35,
                              color: Color(0xffFD4416),
                            ),
                            label: const Text(
                              "KULLANICI BİLGİLERİM",
                              style: TextStyle(color: Color(0xffFD4416)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(24, 10, 0, 0),
                          child: TextButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: const Icon(
                              Icons.cases_outlined,
                              size: 35,
                              color: Color(0xffFD4416),
                            ),
                            label: const Text(
                              "SİPARİŞLERİM",
                              style: TextStyle(color: Color(0xffFD4416)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(24, 10, 0, 0),
                          child: TextButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: const Icon(
                              Icons.location_on_outlined,
                              size: 35,
                              color: Color(0xffFD4416),
                            ),
                            label: const Text(
                              "ADRES BİLGİLERİM ",
                              style: TextStyle(color: Color(0xffFD4416)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(24, 10, 0, 0),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SettingsPage(),
                              ));
                            },
                            icon: const Icon(
                              Icons.settings,
                              size: 35,
                              color: Color(0xffFD4416),
                            ),
                            label: const Text(
                              "AYARLAR",
                              style: TextStyle(color: Color(0xffFD4416)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 25, 0, 0),
                    width: 30,
                    height: 2,
                    color: const Color(0xffFD4416),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    width: 17,
                    height: 2,
                    color: const Color(0xffFD4416),
                  ),
                ],
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
              elevation: 0,
              title: const Text(
                "TUORX",
                style: TextStyle(color: Color(0xffFD4416), fontFamily: "mont"),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 15, top: 15),
                  width: 40,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://www.leisureopportunities.co.uk/images/105265_616653.jpg",
                          ),
                          fit: BoxFit.cover)),
                )
              ],
            ),
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
                selectedItemColor: const Color(0xffFD4416),
                onTap: _onItemTapped,
              ),
            )));
  }
}
