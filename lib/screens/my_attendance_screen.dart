import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ga/widget/my_app_bar.dart';

class AttendanceScreen extends ConsumerStatefulWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  AttendanceScreenState createState() => AttendanceScreenState();
}

class AttendanceScreenState extends ConsumerState<AttendanceScreen> {
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
    List<String> items = [
      '두러운뜨마락망가루말개집시타노오작전',
      '아마도사스끼쩜마왕케이쥬마요토요마오사와리',
      '코노하나미니치와이센자카스카데오하카이',
      '토모다치유지니에바웃러브케이온',
      '벤이소시오프란치스코딸기요거트망고맛',
      '노점상의귀환오징어버거캔커피크루아상',
      '케밥을사랑한여자소시지바게트클럽',
      '메탈기어소리다카르르스나이퍼월드',
      '페인터오브라이트와이드앵글케이크샵',
      '어나더우먼워드오브드래곤즈드라이브'
    ];
    return Scaffold(
      appBar: const MyAppBar(titleText: '20195035 김윤재'),
      body: SizedBox(
        width: MediaQuery.of(context).size.width - 40,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              color: Colors.green,
              child: const Text('이산수학'),
            ),
            Container(
              color: Colors.red,
              child: const Text('출석: 10 / 지각: 2 / 결석: 1'),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: items.length,
                  separatorBuilder: (context, index) => const Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      color: Colors.green,
                      child: Text(
                        items[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
