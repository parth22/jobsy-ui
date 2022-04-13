import 'package:flutter/material.dart';
import 'package:jobsy/const/colour.dart';
import 'package:jobsy/widgets/comman_textfiled.dart';

class JobDetailScreen extends StatelessWidget {
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
              child: _buildHeader(context),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset('assets/images/job_detail.png')),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Center(
                      child: Text(
                        'Crewmate Studios',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _builJobTitle(),
                    const SizedBox(
                      height: 30,
                    ),
                    _buildValue(),
                    const SizedBox(
                      height: 30,
                    ),
                    _buildType(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                      'sed do eiusmod tempor incididunt ut labore et dolore'
                      'magna aliqua.',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                      'sed do eiusmod tempor incididunt ut labore et dolore'
                      'magna aliqua.',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Requirements',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Duis aute irure dolor in reprehenderit in voluptate'
                      'velit esse cillum dolore eu fugiat nulla pariatur.'
                      'Excepteur sint occaecat cupidatat non proident, sunt in',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: MaterialButton(
                        color: Colors.white,
                        padding: const EdgeInsets.all(14),
                        minWidth: MediaQuery.of(context).size.width,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        onPressed: () {},
                        child: const Text(
                          'Apply For This Job',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colours.blue,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildValue() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Salary',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Text(
              '\$500 - \$1,000',
              style: TextStyle(
                  fontSize: 16,
                  color: Colours.blue,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Experience',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Text(
              '3 - 5 Years',
              style: TextStyle(
                  fontSize: 16,
                  color: Colours.blue,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Employment',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Text(
              'Fulltime',
              style: TextStyle(
                  fontSize: 16,
                  color: Colours.blue,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }

  Widget _builJobTitle() {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'UI Designer',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8,
            ),
            Text('Medan, Indonesia',
                style: TextStyle(
                    fontFamily: 'Nunito-Bold',
                    fontSize: 14,
                    color: Colours.lightBlack.withOpacity(0.4),
                    fontWeight: FontWeight.w700)),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Image.asset('assets/images/bauge.png'),
            const SizedBox(
              height: 8,
            ),
            Text('Posted 4h ago',
                style: TextStyle(
                    fontFamily: 'Nunito-Bold',
                    fontSize: 12,
                    color: Colours.lightBlack.withOpacity(0.4),
                    fontWeight: FontWeight.w700)),
          ],
        ),
      ],
    );
  }

  Widget _buildType() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              height: 50,
              child: const Center(
                  child: Text(
                'Job Desc.',
                style: TextStyle(
                    fontFamily: 'Nunito-Bold',
                    fontSize: 16,
                    color: Colours.blue,
                    fontWeight: FontWeight.w800),
              )),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: Color(0xffEDEDED),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: const Center(
                  child: Text(
                'Gallery',
                style: TextStyle(
                    fontFamily: 'Nunito-Bold',
                    fontSize: 16,
                    color: Color(0xff737373),
                    fontWeight: FontWeight.w800),
              )),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: commanContainer(image: 'assets/svg/back_arrow.svg')),
        commanContainer(image: 'assets/svg/more_dot.svg'),
      ],
    );
  }
}
