import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const MyAppBar({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    child: Text(
                      titleText,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
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
