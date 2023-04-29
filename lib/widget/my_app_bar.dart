import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  final String logoPath = 'assets/images/logo.png';

  const MyAppBar({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Align(
        alignment: Alignment.centerRight,
        child: Text(titleText),
      ),
      centerTitle: false,
      leading: IconButton(
        icon: Image.asset(logoPath),
        onPressed: onLogoPressed,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: onProfilePressed,
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
