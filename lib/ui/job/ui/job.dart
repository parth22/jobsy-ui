import 'package:flutter/material.dart';
import 'package:jobsy/const/colour.dart';
import 'package:jobsy/const/comman_list.dart';
import 'package:jobsy/ui/job/ui/job_detail.dart';
import 'package:jobsy/widgets/comman_textfiled.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Jobs',
                        style: TextStyle(
                            fontFamily: 'Nunito-ExtraBold',
                            fontSize: 30,
                            fontWeight: FontWeight.w800),
                      ),
                      commanContainer(image: 'assets/svg/notification.svg'),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildHeader(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Recommende jobs',
                    style: TextStyle(
                        fontFamily: 'Nunito-Bold',
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildList() {
    return Expanded(
      child: SingleChildScrollView(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 190,
              crossAxisSpacing: 14,
              mainAxisSpacing: 20),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: recommendedJobList.length,
          itemBuilder: (BuildContext context, int index) => Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    recommendedJobList[index]['name'].toString(),
                    style: const TextStyle(
                        fontFamily: 'Nunito-Bold',
                        fontSize: 14,
                        color: Colours.lightBlack,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    recommendedJobList[index]['position'].toString(),
                    style: const TextStyle(
                        fontFamily: 'Nunito-Bold',
                        fontSize: 16,
                        color: Colours.blackColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push<void>(MaterialPageRoute<void>(
                          builder: (BuildContext context) => JobDetailScreen(),
                        ));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Colours.blue,
                      child: const Text(
                        'View',
                        style: TextStyle(
                            fontFamily: 'Nunito-Bold',
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
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

  Widget _buildHeader() {
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
                'Full-time',
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
                'Part-time',
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
}
