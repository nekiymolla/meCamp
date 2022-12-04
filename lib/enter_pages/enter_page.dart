import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../routes/router.gr.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  Widget chooseEnter() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          width: 250,
          child: Image(image: AssetImage('assets/images/logo.png')),
        ),
        const SizedBox(
          height: 100,
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 20),
          child: GradientText('Выберите действие',
              colors: const [
                Color(0xFF5F2C82),
                Color(0xFF49A09D),
              ],
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                fontSize: 28,
              ))),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextButton(
              onPressed: () {
                context.router.push(const SignUpRoute());
              },
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.person_add,
                    size: 40,
                    color: Color(0xFF004E8F),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    'Зарегистрироваться',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Color(0xFF004E8F), fontSize: 20)),
                  )
                ],
              )),
        ),
        const Divider(
          color: Color.fromARGB(255, 132, 131, 129),
          height: 0,
          indent: 20,
          endIndent: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextButton(
              onPressed: () {
                context.router.push(const SignInRoute());
              },
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.lock_outlined,
                    size: 40,
                    color: Color(0xFF004E8F),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    'Войти',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Color(0xFF004E8F), fontSize: 20)),
                  )
                ],
              )),
        ),
        const Divider(
          color: Color.fromARGB(255, 132, 131, 129),
          height: 0,
          indent: 20,
          endIndent: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.apple,
                    size: 40,
                    color: Color(0xFF004E8F),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    'Войти через Apple ID',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Color(0xFF004E8F), fontSize: 20)),
                  )
                ],
              )),
        ),
        const Divider(
          color: Color.fromARGB(255, 132, 131, 129),
          height: 0,
          indent: 20,
          endIndent: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.person_outline,
                    size: 40,
                    color: Color(0xFF004E8F),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    'Войти без авторизации',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Color(0xFF004E8F), fontSize: 20)),
                  )
                ],
              )),
        ),
        const Divider(
          color: Color.fromARGB(255, 132, 131, 129),
          height: 0,
          indent: 20,
          endIndent: 20,
        ),
      ],
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
          child: Center(
            child: chooseEnter(),
          ),
        ),
      ),
    );
  }
}
