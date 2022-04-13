import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsy/const/colour.dart';
import 'package:jobsy/widgets/bottom_nevigation.dart';
import 'package:jobsy/widgets/comman_textfiled.dart';

class SingInScreen extends StatefulWidget {
  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: Stack(
        children: <Widget>[
          Image.asset('assets/images/circles.png'),
          PageView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int indexOfBuilder) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      index == 0 ? 'Want to SignIn?' : 'Want to SignUp',
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        index == 0
                            ? 'Enter your personal details to signin'
                            : 'Enter your personal details to signup',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/bot_image.png',
                      height: 138,
                      width: 128,
                    ),
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: MediaQuery.of(context).size.height / 1.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: commaTextfiled(
                                          hintText: 'Johndoe12@gmail.com',
                                          prefixIcon: 'assets/svg/user.svg',
                                          suffixIcon: 'assets/svg/Tick.svg'),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    commaTextfiled(
                                        hintText: '\**********',
                                        prefixIcon: 'assets/svg/lock.svg',
                                        suffixIcon: 'assets/svg/eye.svg'),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          index == 0 ? 'SignIn' : 'SignUp',
                                          style: const TextStyle(
                                            fontSize: 25,
                                            fontFamily: 'Nunito-ExtraBold',
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.of(context).push<void>(
                                                MaterialPageRoute<void>(
                                                    builder: (BuildContext
                                                            context) =>
                                                        const BottomNavBar()));
                                          },
                                          color: Colours.buttonColor,
                                          height: 50,
                                          minWidth: 50,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: SvgPicture.asset(
                                              'assets/svg/forward_arrow.svg'),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Text(
                                        index == 0
                                            ? 'SignIn with social account'
                                            : 'SignUp with social account',
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Nunito-SemiBold',
                                          color: Colours.lightBlack,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Image.asset('assets/images/fb.png'),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Image.asset('assets/images/google.png'),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        children: <Widget>[
                                          TextButton(
                                              onPressed: () {
                                                if (index == 0) {
                                                  setState(() {
                                                    index = 1;
                                                  });
                                                } else {
                                                  setState(() {
                                                    index = 0;
                                                  });
                                                }
                                              },
                                              style: TextButton.styleFrom(),
                                              child: Text(
                                                index == 0
                                                    ? 'Don’t have account?'
                                                    : 'Have account?',
                                                style: const TextStyle(
                                                  // fontSize: 16,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontFamily: 'Nunito-SemiBold',
                                                  color: Colours.blackColor,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )),
                                          TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(),
                                              child: Text(
                                                index == 0
                                                    ? 'Forgot password?'
                                                    : 'Term of services?',
                                                style: const TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  // fontSize: 16,
                                                  fontFamily: 'Nunito-SemiBold',
                                                  color: Colours.blackColor,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
