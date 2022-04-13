import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsy/const/colour.dart';
import 'package:jobsy/const/comman_list.dart';
import 'package:jobsy/ui/serach/ui/serch_screen.dart';
import 'package:jobsy/widgets/comman_textfiled.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                        'Discover the \nperfect job!',
                        style: TextStyle(
                            fontFamily: 'Nunito-ExtraBold',
                            fontSize: 30,
                            fontWeight: FontWeight.w800),
                      ),
                      commanContainer(image: 'assets/svg/notification.svg'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildTextfiled(context),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildSerchList(context),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Latest Vacancies',
                    style: TextStyle(
                        fontFamily: 'Nunito-SemiBold',
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildList() {
    return Expanded(
      child: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: latestVacancies.length,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(latestVacancies[index]['image'].toString()),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(latestVacancies[index]['name'].toString(),
                              style: const TextStyle(
                                  fontFamily: 'Nunito-Bold',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(latestVacancies[index]['place'].toString(),
                              style: TextStyle(
                                  fontFamily: 'Nunito-Bold',
                                  fontSize: 16,
                                  color: Colours.lightBlack.withOpacity(0.4),
                                  fontWeight: FontWeight.w700)),
                          const SizedBox(
                            height: 6,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colours.lightBlue,
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              'FULLTIME',
                              style: TextStyle(
                                  fontFamily: 'Nunito-Bold',
                                  fontSize: 12,
                                  color: Colours.lightBlack.withOpacity(0.4),
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Image.asset('assets/images/bauge.png'),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            latestVacancies[index]['time'].toString(),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(latestVacancies[index]['salary'].toString(),
                              style: const TextStyle(
                                  fontFamily: 'Nunito-Bold',
                                  color: Colours.blue,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSerchList(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: serachList.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            padding: const EdgeInsets.all(17),
            child: Row(
              children: <Widget>[
                SvgPicture.asset(serachList[index]['image'].toString()),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  serachList[index]['name'].toString(),
                  style: const TextStyle(
                    color: Colours.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextfiled(BuildContext context) {
    return TextField(
      onTap: () {
        Navigator.of(context).push<void>(MaterialPageRoute<void>(
          builder: (BuildContext context) => const SearchScreen(),
        ));
      },
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(25)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(25)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          hintText: 'Search Job',
          hintStyle: TextStyle(color: Colours.lightBlack.withOpacity(0.4)),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(19),
            child: SvgPicture.asset('assets/svg/serach.svg'),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(19),
            child: SvgPicture.asset('assets/svg/more.svg'),
          )),
    );
  }
}
