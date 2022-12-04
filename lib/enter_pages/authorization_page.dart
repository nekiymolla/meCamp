// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orenhackcamp/child_pages/dialog.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';

import '../data/token.dart';
import '../routes/router.gr.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController(text: 'dvorec@dtdm-oren.ru');
  final _passwordController = TextEditingController(text: 'Qwerty123');
  final apiProvider = Provider(create: (ref) => SessionManager());

  Future<void> login() async {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      SessionManager.api.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90));
      try {
        apiProvider;
        var response = await SessionManager.api.post(
          ("https://gamification.oksei.ru/HealthServer/api/account/sign"),
          data: {
            "Email": _emailController.text,
            "Password": _passwordController.text,
            HttpHeaders.contentTypeHeader: 'application/json'
          },
        );
        if (response.statusCode == 200) {
          final token = response.data!['access_token'];
          final username = response.data!['username'];
          final role = response.data!['role'];
          SessionManager().updatetoken(username);
          SessionManager().updatetoken(role);
          SessionManager().updatetoken(token);
          context.router.replaceAll([const NavPageRoute()]);
        } else {}
      } catch (e) {
        showErrorLogIn(context);
      }
    } else {
      showErrorNull(context);
    }
  }

  Widget buttonAuth() {
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.only(left: 0, right: 0));

    return ElevatedButton(
      style: Elstyle,
      onPressed: () async {
        login();
      },
      child: Ink(
        width: 200,
        height: 45,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color(0xFF0074DE),
                Color(0xFF5C9DFF),
              ]),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 100,
            minHeight: 40,
          ), // min sizes for Material buttons
          alignment: Alignment.center,
          child: Text(
            'Войти',
            style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget inputAuth(
      String hint, TextEditingController controller, bool obscure) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: TextField(
        cursorColor: const Color(0xFF004E8F),
        controller: controller,
        obscureText: obscure,
        style: GoogleFonts.montserrat(
            textStyle: const TextStyle(fontSize: 20, color: Colors.black)),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Colors.white,
          hintStyle: GoogleFonts.montserrat(
              textStyle: const TextStyle(
            fontSize: 14,
            color: Color(0xFF004E8F),
          )),
          hintText: hint,
        ),
      ),
    );
  }

  Widget formINputs() {
    return Container(
      height: 400,
      width: 400,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          image: DecorationImage(
              image: AssetImage('assets/images/formInput.png'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Авторизация',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            inputAuth('E-mail', _emailController, false),
            const SizedBox(height: 10),
            inputAuth('Пароль', _passwordController, true),
            const SizedBox(
              height: 80,
            ),
            buttonAuth(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background_auth.png'),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              alignment: Alignment.topCenter,
              child: formINputs(),
            ),
          ),
        ),
      ),
    );
  }
}
