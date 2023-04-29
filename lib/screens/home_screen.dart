import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ga/widget/my_app_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
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
      appBar: const MyAppBar(
        titleText: '20195035 김윤재',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildCurrentClassWidget(context, ref),
              _buildMyAttendance(context, ref),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentClassWidget(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Container(
      color: Colors.grey,
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.green,
            height: 60,
            alignment: Alignment.centerLeft,
            child: const Text(
              '지금 수업',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                color: Colors.red,
                child: const Text(
                  'WIFI',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                color: Colors.blue,
                child: const Text(
                  'GPS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '이산 수학',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      '월 10:30 ~ 12:00',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '수 10:30 ~ 12:00',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Text(
                  '지스트대학 A동 (115)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              child: const Text(
                '출석하기',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildMyAttendance(BuildContext context, WidgetRef ref) {
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
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            color: Colors.green,
            height: 60,
            child: Row(
              children: [
                Container(
                  color: Colors.red,
                  child: const Text(
                    '내 출석',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: const Text(
                    '지각 4 / 출석 0',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // AttendanceListItemsBuilder<Model>(
          //     data:,
          //     itemBuilder: (context, model) => ItemTile(
          //         model: model,
          //     ),
          // ),
          Container(
            color: Colors.red,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
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
        ],
      ),
    );
  }
}
