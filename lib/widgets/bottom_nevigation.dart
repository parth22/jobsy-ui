import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsy/ui/home/ui/home_screen.dart';
import 'package:jobsy/ui/job/ui/job.dart';
import 'package:jobsy/ui/setting/ui/setting.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int _selectedItem = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          top: false,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  _selectedItem == 0
                      ? const HomeScreen()
                      : _selectedItem == 1
                          ? const JobScreen()
                          : const SettingScreen(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                      child: BottomNavigationBar(
                        backgroundColor: Colors.white,
                        items: <BottomNavigationBarItem>[
                          _selectedItem == 0
                              ? BottomNavigationBarItem(
                                  icon: SvgPicture.asset('assets/svg/home.svg'),
                                  label: '')
                              : BottomNavigationBarItem(
                                  icon: SvgPicture.asset(
                                      'assets/svg/home_unselect.svg'),
                                  label: ''),
                          _selectedItem == 1
                              ? BottomNavigationBarItem(
                                  icon: SvgPicture.asset('assets/svg/job.svg'),
                                  label: '')
                              : BottomNavigationBarItem(
                                  icon: SvgPicture.asset(
                                      'assets/svg/job_unselect.svg'),
                                  label: ''),
                          _selectedItem == 2
                              ? BottomNavigationBarItem(
                                  icon: SvgPicture.asset(
                                      'assets/svg/setting.svg'),
                                  label: '')
                              : BottomNavigationBarItem(
                                  icon: SvgPicture.asset(
                                      'assets/svg/setting_unselect.svg'),
                                  label: ''),
                        ],
                        onTap: _onItemTapped,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
