import 'package:flutter/material.dart';
import 'package:ga/screens/signup/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isCheck = false;
  bool _securePassword = true;
  bool _isValidPassword = true;

  Color getColor(Set<MaterialState> states) {
    return Colors.grey.shade400;
  }

  void validPassword(String password) {
    setState(
      () {
        if (password.length >= 8 && password.length <= 20) {
          _isValidPassword = true;
        } else {
          _isValidPassword = false;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: null,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 200,
                height: 120,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 80.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffF7F8F8),
                        filled: true,
                        prefixIcon:
                            Icon(Icons.person_outline_outlined, size: 20),
                        hintText: "Student ID",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      obscureText: _securePassword,
                      decoration: InputDecoration(
                        fillColor: const Color(0xffF7F8F8),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.lock_outlined,
                          size: 20,
                        ),
                        suffixIcon: IconButton(
                          iconSize: 20,
                          color: Colors.black,
                          icon: Icon(_securePassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _securePassword = !_securePassword;
                            });
                          },
                        ),
                        hintText: "password",
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        ),
                        errorText:
                            !_isValidPassword ? '8자 이상 20자 이하로 설정해주세요' : null,
                      ),
                      onChanged: validPassword,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          _isCheck = !_isCheck;
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: _isCheck,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                _isCheck = !_isCheck;
                              },
                            );
                          },
                        ),
                        Text("로그인 상태 유지",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, top: 100.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 20 * 2,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(99.0),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.1, 0.9],
                            colors: [Color(0xff92A3FD), Color(0xff9DCEFF)],
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.login_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0),
                      child: Row(
                        children: [
                          Container(
                              color: const Color(0xffDDDADA),
                              height: 1,
                              width: MediaQuery.of(context).size.width * 0.40),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6.0),
                            child: Text(
                              "Or",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                              color: const Color(0xffDDDADA),
                              height: 1,
                              width: MediaQuery.of(context).size.width * 0.40),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account yet? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Register",
                                  style: TextStyle(color: Color(0xffC58BF2)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
