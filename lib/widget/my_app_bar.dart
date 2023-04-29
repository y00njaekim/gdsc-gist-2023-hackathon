import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../apis/student_info.dart';
import '../models/student/student.dart';

final studentProvider = FutureProvider<Student>((ref) async {
  final student = await StudentInfoApi.getStudentInfoApi();
  return student;
});

class MyAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(studentProvider);
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: false,
      actions: [
        Container(
          padding: const EdgeInsets.only(right: 30),
          width: MediaQuery.of(context).size.width - 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: 48.0,
                // icon: SvgPicture.asset("assets/images/logo.svg"),
                icon: Image.asset('assets/images/logo.png'),
                onPressed: onLogoPressed,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: user.when(
                      data: (user) {
                        return Text(
                          "${user.id} ${user.name}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      },
                      error: (Object error, StackTrace stackTrace) {
                        return Container();
                      },
                      loading: () {
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: const Icon(
                      Icons.account_circle,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void onLogoPressed() {
    print("Logo Pressed");
  }

  void onProfilePressed() {
    print("Profile Pressed");
  }
}
