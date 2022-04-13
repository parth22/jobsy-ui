import 'package:flutter/material.dart';
import 'package:jobsy/login_and_register.dart/sign_in.dart';
import 'package:jobsy/widgets/background_design.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int indexOfBuilder) => Stack(
          children: <Widget>[
            BackGroundDesign(
                imageUrl: index == 0
                    ? 'assets/images/onBording1.png'
                    : index == 1
                        ? 'assets/images/onBording2.png'
                        : 'assets/images/onBording3.png'),
            SafeArea(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Positioned(
                    top: 0,
                    right: 20,
                    child: GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          index = 1;
                        } else if (index == 1) {
                          index = 2;
                        } else {
                          Navigator.of(context).push<void>(
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      SingInScreen()));
                        }
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          index == 0 || index == 1
                              ? Icons.play_arrow_rounded
                              : Icons.check_rounded,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 64,
                          left: 20,
                          right: 62,
                        ),
                        child: Text(
                          index == 0
                              ? 'An Opportunities\nto make your\ndifferents!'
                              : index == 1
                                  ? 'Find Your dream\njob near you\ntoday!'
                                  : 'Stable yourself\nwith your\nskills!',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          bottom: 40,
                          left: 20,
                          right: 20,
                        ),
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and'
                          ' type setting industry. Lorem Ipsum is simply dummy '
                          'text of the printing and type setting industry.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
