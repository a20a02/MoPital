import 'package:flutter/material.dart';
import 'package:mopital_app/Screen/primaryscreen/home_screen.dart';
import 'package:mopital_app/constants.dart';
import 'package:mopital_app/screen/primaryscreen/profile_screen.dart';
import 'package:mopital_app/screen/primaryscreen/setting_screen.dart';

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({Key? key}) : super(key: key);

  @override
  State<PrimaryScreen> createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> appBarTitle = [
      "Home",
      "Profile",
      "Setting",
    ];

    List<Widget> pages = const [
      HomeScreen(),
      ProfileScreen(),
      SettingScreen(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: (_currentIndex == 0)
            ? [
                Padding(
                  padding: const EdgeInsets.only(top: 26, right: 16),
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_active,
                      size: 32,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ]
            : [
                Padding(
                  padding: const EdgeInsets.only(top: 26, right: 16),
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 32,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ],
        title: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Text(
            appBarTitle[_currentIndex],
            style: largeFont,
          ),
        ),
      ),
      floatingActionButton: (_currentIndex != 1)
          ? null
          : Align(
              alignment: const Alignment(1, 0.95),
              child: FloatingActionButton(
                backgroundColor: darkGreen,
                onPressed: () {},
                child: const Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
              ),
            ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.shifting,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: darkOrange,
          unselectedItemColor: Colors.white,
          iconSize: 32,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: lightGreen,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: lightGreen,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
              backgroundColor: lightGreen,
            ),
          ],
        ),
      ),
      body: pages[_currentIndex],
    );
  }
}
