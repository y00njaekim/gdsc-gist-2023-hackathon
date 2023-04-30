import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ga/apis/attendance_by_lecture.dart';
import 'package:intl/intl.dart';

import '../models/attendance/attendance.dart';

Map<String, List<dynamic>> result = {
  "OK": ["Attendance", "Checked", true],
  "LATE": ["LATE", "Checked", false],
  "ABSENT": ["ABSENT", "No attendance check", false],
};

final lectureListProvider =
    FutureProvider.family<List<Attendance>, String>((ref, str) async {
  final attendances =
      await AttendanceListByLecture.getAttendanceByLectureApi(str);
  return attendances.attendanceList;
});

// final countLectureProvider =
//     FutureProvider.family<Count, String>((ref, str) async {
//   final attendances =
//       await AttendanceListByLecture.getAttendanceByLectureApi(str);
//   return attendances.attendanceList;
// });

class DetailAttendanceScreen extends ConsumerStatefulWidget {
  const DetailAttendanceScreen(this.lectureName, this.lectureId, {Key? key})
      : super(key: key);
  final String lectureName;
  final String lectureId;
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
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          widget.lectureName,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          alignment: Alignment.center,
          color: Colors.white,
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
    final lectureProvider = ref.watch(
      lectureListProvider(
        widget.lectureId,
      ),
    );

    return lectureProvider.when(
      data: (lectureProvider) {
        return Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: lectureProvider.length,
            separatorBuilder: (context, index) => const Divider(
              height: 5,
              color: Colors.transparent,
            ),
            itemBuilder: (context, index) {
              return _buildAttendanceItem(lectureProvider[index], index);
            },
          ),
        );
      },
      error: (Object error, StackTrace stackTrace) {
        return Text("$error");
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  SizedBox _buildAttendanceItem(Attendance item, int index) {
    String formatDay(String date) {
      DateTime dateTime = DateTime.parse(date);
      return DateFormat("MM/dd", "ko_KR").format(dateTime);
    }

    String formatHour(String date) {
      DateTime dateTime = DateTime.parse(date);
      return DateFormat("HH : mm", "ko_KR").format(dateTime);
    }

    List<dynamic> data = result[item.status]!;
    return SizedBox(
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(formatDay(item.created_at),
                    style: data[2]
                        ? TextStyle(
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
                          )
                        : const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffADA4A5))),
                //아직 구현 안 됨
                // Text(
                //   dayOfWeek,
                //   style: const TextStyle(
                //     fontSize: 14,
                //     fontWeight: FontWeight.w400,
                //     color: Color(0xffADA4A5),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                data[2]
                    ? Image.asset(
                        'assets/images/Circle_pink.png',
                      )
                    : Image.asset(
                        'assets/images/Circle_grey.png',
                      ),
                data[2]
                    ? Image.asset(
                        'assets/images/Line_pink.png',
                      )
                    : Image.asset(
                        'assets/images/Line_grey.png',
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
                Text(
                  '${data[0]}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff1D1617),
                  ),
                ),
                Container(
                  height: 8,
                ),
                Text(
                  "${formatHour(item.created_at)} ${data[1]}",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7B6F72),
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
