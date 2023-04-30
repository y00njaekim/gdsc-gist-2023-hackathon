import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends ConsumerState<ProfileScreen> {
  final phoneNumController = TextEditingController();
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
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Profile',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          )),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildUserProfiile(),
                Container(
                  height: 15,
                ),
                _buildUserAccount(),
                Container(
                  height: 15,
                ),
                _buildUserDevice(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserProfiile() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile.png',
            width: 100,
            height: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Text(
                  'Eunhee Jeon',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                height: 7,
              ),
              Container(
                child: const Text(
                  '20215178',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserAccount() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3), // 그림자의 위치를 조정합니다.
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30),
            child: const Text(
              'Account',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(left: 30),
                child: const Icon(
                  Icons.call_outlined,
                  color: Color(0xff92A3FD),
                  size: 20,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Phone number',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7B6F72),
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 40,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '010-1234-5678',
                        filled: true,
                        fillColor: Color(0xffF7F8F8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(left: 30),
                child: const Icon(
                  Icons.mail_outline,
                  color: Color(0xff92A3FD),
                  size: 20,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'E-mail',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7B6F72),
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 40,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'eunhee.jeon@gm.gist.ac.kr',
                        filled: true,
                        fillColor: Color(0xffF7F8F8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(left: 30),
                child: const Icon(
                  Icons.pie_chart_sharp,
                  color: Color(0xff92A3FD),
                  size: 20,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Major',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7B6F72),
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 40,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'EECS',
                        filled: true,
                        fillColor: Color(0xffF7F8F8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserDevice() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3), // 그림자의 위치를 조정합니다.
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30),
            child: const Text(
              'Device Registration',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(left: 30),
                child: const Icon(
                  Icons.info_outline_rounded,
                  color: Color(0xff92A3FD),
                  size: 20,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Current Registered Device',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7B6F72),
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 40,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Eunhee jeon’s iPhone 11 Pro',
                        filled: true,
                        fillColor: Color(0xffF7F8F8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 15,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xff92A3FD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(99.0),
                ),
                fixedSize: const Size(200, 35),
              ),
              child: const Text(
                'Device Change',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
