import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsy/const/colour.dart';
import 'package:jobsy/widgets/comman_textfiled.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Image.asset('assets/images/circles.png'),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Settings',
                          style: TextStyle(
                              fontFamily: 'Nunito-ExtraBold',
                              fontSize: 30,
                              fontWeight: FontWeight.w800),
                        ),
                        commanContainer(image: 'assets/svg/more_dot.svg'),
                      ],
                    ),
                    const SizedBox(
                      height: 39,
                    ),
                    _buildProfile(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                      'sed do eiusmod tempor incididunt ut labore et dolore'
                      'magna aliqua.',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                          colors: <Color>[Color(0xff3381F3), Color(0xff003889)],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'My Resume',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'david_resume.pdf',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            SvgPicture.asset('assets/svg/Download.svg')
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Skills',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'Experience',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _buildExperiance(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 8,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildExperiance() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 16,
                      width: 16,
                      decoration: const BoxDecoration(
                          color: Colours.blue, shape: BoxShape.circle),
                    ),
                    Container(
                      height: 100,
                      child: const VerticalDivider(
                        color: Colours.blue,
                        width: 2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      '2018 - Now',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colours.blue),
                    ),
                    Text(
                      'Principal UI Designer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Kongkalikong Studios',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff808080)),
                    ),
                  ],
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colours.blue),
                          shape: BoxShape.circle),
                    ),
                    Container(
                      height: 100,
                      child: const VerticalDivider(
                        color: Colours.blue,
                        width: 2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      '2018 - Now',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colours.blue),
                    ),
                    Text(
                      'Principal UI Designer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Kongkalikong Studios',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff808080)),
                    ),
                  ],
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colours.blue),
                      shape: BoxShape.circle),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      '2018 - Now',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colours.blue),
                    ),
                    Text(
                      'Principal UI Designer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Kongkalikong Studios',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff808080)),
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _buildProfile() {
    return Row(
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.circular(19),
            child: Image.asset(
              'assets/images/user_image.png',
              height: 92,
              width: 92,
            )),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'William Smith',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Text(
              'Designer',
              style: TextStyle(
                fontFamily: 'Nunito-Bold',
                fontSize: 14,
                color: Colours.lightBlack.withOpacity(0.4),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: <Widget>[
                Image.asset('assets/images/fb_logo.png'),
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/dr.png'),
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/be.png'),
              ],
            )
          ],
        ),
      ],
    );
  }
}
