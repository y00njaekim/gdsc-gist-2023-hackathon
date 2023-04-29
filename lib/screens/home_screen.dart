import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ga/models/count/count.dart';
import 'package:ga/models/lecture/lecture_info.dart';
import 'package:ga/utils/utils.dart';
import 'package:ga/widget/my_app_bar.dart';

import '../apis/attendance_count_by_lecture.dart';
import '../apis/student_lecture_list.dart';
import '../apis/validate_ip.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

final lectureListProvider = FutureProvider<List<LectureInfo>>((ref) async {
  final lectures = await StudentLectureListApi.getStudentLectureList();
  // API에서 가져온 강의 리스트를 리턴합니다.
  return lectures.lectureInfoList;
});

final apiProvider = FutureProvider.family<List<bool>, String>((ref, str) async {
  final firstComponent = await getIPAddress() == null ? false : true;
  final secondComponent = await getCurrentLocation() == null ? true : false;
  final response = firstComponent == true
      ? await ValidateIp.getValidateIp(await getIPAddress() as String, str)
      : false;
  return [firstComponent, secondComponent, response];
});

final timerProvider = Provider.autoDispose((ref) {
  return Timer.periodic(const Duration(seconds: 10), (timer) {
    ref.refresh(apiProvider("ES2023"));
  });
});

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    ref.read(lectureListProvider);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildCurrentClassWidget(context, ref),
                _buildMyAttendance(context, ref),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentClassWidget(
    BuildContext context,
    WidgetRef ref,
  ) {
    ref.watch(timerProvider);
    final data = ref.watch(apiProvider("ES2023"));

    return data.when(
      data: (data) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(80, 157, 206, 255),
                  Color.fromARGB(80, 146, 164, 253),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(22),
              color: Colors.grey,
            ),
            width: MediaQuery.of(context).size.width - 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 12, 0, 0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Class Now',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffF7F8F8),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: const Icon(
                                    Icons.wifi,
                                    color: Colors.black,
                                  ),
                                ),
                                const Text(
                                  'WIFI',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            //이거 wifi 연동에 따라 다를 듯
                            data[0]
                                ? Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: const Icon(
                                      // icons x
                                      Icons.close,
                                      color: Colors.black,
                                    ),
                                  )
                                : Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: const Icon(
                                      // icons x
                                      Icons.check,
                                      color: Color(0xffc58bf2),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffF7F8F8),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: const Icon(
                                    Icons.location_on,
                                    color: Colors.black,
                                  ),
                                ),
                                const Text(
                                  'GPS',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            data[1]
                                ? Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: const Icon(
                                      // icons x
                                      Icons.close,
                                      color: Colors.black,
                                    ),
                                  )
                                : Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: const Icon(
                                      // icons x
                                      Icons.check,
                                      color: Color(0xffc58bf2),
                                    ),
                                  ),
                            // Container(
                            //   margin:
                            //       const EdgeInsets.symmetric(horizontal: 12),
                            //   child: const Icon(
                            //     Icons.check,
                            //     color: Colors.green,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Discrete Mathematics',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          children: const [
                            Text(
                              'MON 10:30 ~ 12:00',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'WED 10:30 ~ 12:00',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'GIST College Building A(115)',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                colors: <Color>[
                                  Color(0xff92A3FD),
                                  Color(0xff9DCEFF),
                                ],
                              ).createShader(
                                  const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                  child: SizedBox(
                      width: 256,
                      height: 56,
                      child: data[1] && data[2]
                          ? ElevatedButton(
                              onPressed: () {
                                //api가 뭐야?
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff92A3FD),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(99.0),
                                ),
                              ),
                              child: const Text(
                                'Check Attendance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          : ElevatedButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(99.0),
                                ),
                              ),
                              child: const Text(
                                'Please check your wifi',
                                style: TextStyle(
                                  color: Color(0xff7B6F72),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                )
              ],
            ),
          ),
        );
      },
      error: (Object error, StackTrace stackTrace) {
        return Text("$error");
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  _buildMyAttendance(BuildContext context, WidgetRef ref) {
    final lectures = ref.watch(lectureListProvider);

    Future<Count> _future(String name) async {
      final result =
          await AttendanceCountLecture.getAttendanceCountLectureApi(name);
      return result;
    }

    // List<LectureInfo> items = ref.watch()
    // [
    //   '두러운뜨마락망가루말개집시타노오작전',
    //   '아마도사스끼쩜마왕케이쥬마요리',
    //   '코노하나미니치와이센자카스카데오하카이',
    //   '토모다치유지니에바웃러브케이온',
    //   '벤이소시오프란치스코딸기요거트망고맛',
    //   '노점상의귀환오징어버거캔커피크루아상',
    //   '케밥을사랑한여자소시지바게트클럽',
    //   '메탈기어소리다카르르스나이퍼월드',
    //   '페인터오브라이트와이드앵글케이크샵',
    //   '어나더우먼워드오브드래곤즈드라이브'
    // ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: MediaQuery.of(context).size.width - 60,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Text(
                    'My Lectures',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                // Container(
                //   child: const Text(
                //     '4 late / 0 absent',
                //     style: TextStyle(
                //         fontSize: 12,
                //         fontWeight: FontWeight.bold,
                //         color: Color(0xffADA4A5)),
                //   ),
                // ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: lectures.when(
                data: (lectures) {
                  return ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: lectures.length,
                    separatorBuilder: (context, index) => const Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    itemBuilder: (context, index) {
                      final lecture = lectures[index];

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              _coloredSquare(index),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 6, 12, 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      lecture.name,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    FutureBuilder(
                                        future: _future(lecture.name),
                                        builder: (context,
                                            AsyncSnapshot<Count> snapshot) {
                                          if (snapshot.hasData) {
                                            final count = snapshot.data;
                                            return Row(
                                              children: [
                                                Text(
                                                  '${count!.LATE} late / ${count.ABSENT} absent',
                                                  style: const TextStyle(
                                                      fontSize: 11,
                                                      color: Color(0xffADA4A5)),
                                                ),
                                              ],
                                            );
                                          }
                                          return Container();
                                        })
                                    // Text(
                                    //   lecture.
                                    //   style: const TextStyle(
                                    //     fontSize: 12,
                                    //     fontWeight: FontWeight.w400,
                                    //     color: Color(0xff7B6F72),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_circle_right_outlined,
                            color: Color(0xffADA4A5),
                          )
                        ],
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) {
                  print(error);
                  return const Text('Failed to fetch lectures');
                }),
          ),
        ],
      ),
    );
  }

  Widget _coloredSquare(int index) {
    return index % 2 == 0
        ? Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(80, 146, 164, 253),
                  Color.fromARGB(80, 157, 206, 255),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
          )
        : Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(80, 197, 139, 242),
                  Color.fromARGB(80, 238, 164, 206),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
          );
  }
}
