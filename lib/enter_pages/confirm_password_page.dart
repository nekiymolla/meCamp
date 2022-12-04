// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names, empty_catches

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';

import '../child_pages/dialog.dart';
import '../data/token.dart';
import '../routes/router.gr.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final _emailController = TextEditingController();
  final _confirmController = TextEditingController();
  final apiProvider = Provider(create: (ref) => SessionManager());

  Widget buttonAuth() {
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.only(left: 0, right: 0));

    return ElevatedButton(
      style: Elstyle,
      onPressed: () async {
        confirmUp();
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
            'Регистрация',
            style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Future<void> confirmUp() async {
    if (_confirmController.text.isNotEmpty &&
        _emailController.text.isNotEmpty) {
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
          ("https://gamification.oksei.ru/HealthServer/api/account/emailConfirm"),
          data: {
            "Email": _emailController.text,
            "code": _confirmController.text,
            HttpHeaders.contentTypeHeader: 'application/json'
          },
        );
        if (response.statusCode == 200) {
          context.router.replaceAll([const NavPageRoute()]);
          showSuccess(context);
        } else {}
      } catch (e) {}
    } else {
      showErrorNull(context);
    }
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
              'Код из почты',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'На почту указанную в регистрации пришло письмо с подтверждением. Введите эту почту и код из письма.',
              style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            inputAuth('Почта', _emailController, false),
            const SizedBox(
              height: 10,
            ),
            inputAuth('Код из почты', _confirmController, false),
            const SizedBox(
              height: 20,
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
                image: AssetImage('assets/images/background_auth.png'))),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              formINputs(),
            ],
          ),
        ),
      ),
    );
  }
}
