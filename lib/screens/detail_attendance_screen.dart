import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailAttendanceScreen extends ConsumerStatefulWidget {
  const DetailAttendanceScreen({Key? key}) : super(key: key);

  @override
  DetailAttendanceScreenState createState() => DetailAttendanceScreenState();
}

class DetailAttendanceScreenState
    extends ConsumerState<DetailAttendanceScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              // backgroundColor: const Color(0xffF7F8F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff1D1617),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Discrete Mathematics',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  _buildAbstract(),
                  Container(
                    height: 20,
                  ),
                  _buildDetailAttendance(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAbstract() {
    return Center(
      child: Column(
        children: [
          Container(
            height: 20,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Attendance',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '10 attend / 4 late / 0 absent',
              style: TextStyle(
                color: Color(0xffADA4A5),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailAttendance() {
    List<String> items = [
      '두러운뜨마락망가',
      '아마도사스끼쩜마',
      '코노하나미니치와',
      '토모다치유지니에',
      '벤이소시오프란치',
      '노점상의귀환오징',
      '케밥을사랑한여자',
      '메탈기어소리다카',
      '페인터오브라이트',
      '어나더우드라이브'
    ];
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Container(
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: items.length,
            separatorBuilder: (context, index) => const Divider(
              height: 5,
              color: Colors.transparent,
            ),
            itemBuilder: (context, index) {
              return _buildAttendanceItem(items, index);
            },
          ),
        ),
      ),
    );
  }

  SizedBox _buildAttendanceItem(List<String> items, int index) {
    bool isLate = false;
    String date = '4/19';
    String dayOfWeek = 'Wed';
    String msgForLate = 'No Attendance Check';
    String msgForAttend = '10:25 Checked';
    return isLate == true
        ? SizedBox(
            height: 65,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          date,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffADA4A5),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          dayOfWeek,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffADA4A5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/Circle_grey.png',
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/Line_grey.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          'Late',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1D1617),
                          ),
                        ),
                      ),
                      Container(
                        height: 8,
                      ),
                      Container(
                        child: Text(
                          msgForLate,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7B6F72),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : SizedBox(
            height: 65,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          date,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                colors: <Color>[
                                  Color(0xffC58BF2),
                                  Color(0xffEEA4CE),
                                ],
                              ).createShader(
                                  const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          dayOfWeek,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                colors: <Color>[
                                  Color(0xffC58BF2),
                                  Color(0xffEEA4CE),
                                ],
                              ).createShader(
                                  const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/Circle_pink.png',
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/Line_pink.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          'Attendance',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1D1617),
                          ),
                        ),
                      ),
                      Container(
                        height: 8,
                      ),
                      Container(
                        child: Text(
                          msgForAttend,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7B6F72),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
