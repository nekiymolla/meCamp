import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalData extends StatefulWidget {
  final int personalId;
  const PersonalData({super.key, @PathParam() required this.personalId});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  Widget buttonChange() {
    // ignore: non_constant_identifier_names
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF00A9DF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        style: Elstyle,
        onPressed: () {},
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.create_outlined),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Изменить информацию',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  fontSize: 16,
                )),
              ),
            ]),
      ),
    );
  }

  Widget buttonShowSnils() {
    // ignore: non_constant_identifier_names
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF00A9DF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        style: Elstyle,
        onPressed: () {},
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.lock_outline_rounded),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Показать снилс',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  fontSize: 16,
                )),
              ),
            ]),
      ),
    );
  }

  Widget buttonShowPass() {
    // ignore: non_constant_identifier_names
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF00A9DF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        style: Elstyle,
        onPressed: () {},
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.lock_outline_rounded),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Показать паспортные данные',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  fontSize: 16,
                )),
              ),
            ]),
      ),
    );
  }

  Widget buttonShowAddress() {
    // ignore: non_constant_identifier_names
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF00A9DF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        style: Elstyle,
        onPressed: () {},
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.lock_outline_rounded),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Показать адрес регистрации',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  fontSize: 16,
                )),
              ),
            ]),
      ),
    );
  }

  Widget snils() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0.1,
            blurRadius: 13.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Номер:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ]),
            const SizedBox(height: 10),
            Align(alignment: Alignment.center, child: buttonShowSnils()),
          ],
        ),
      ),
    );
  }

  Widget addressCurrentRegistration() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0.1,
            blurRadius: 13.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Нас. пункт:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 275,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Индекс:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 101,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Страна:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 101,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Регион:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 107,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Район:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 107,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                'Улица:',
                style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 309,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.10,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                'Номер дома:',
                style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 84,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.10,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                'корпус:',
                style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 84,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.10,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                'Квартира:',
                style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 281,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.10,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
          ]),
          const SizedBox(height: 10),
          Align(alignment: Alignment.center, child: buttonShowAddress()),
        ]),
      ),
    );
  }

  Widget addressRegistration() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0.1,
            blurRadius: 13.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Нас. пункт:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 275,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Индекс:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 101,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Страна:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 101,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Регион:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 107,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Район:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 107,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                'Улица:',
                style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 309,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.10,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                'Номер дома:',
                style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 84,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.10,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                'корпус:',
                style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 84,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.10,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                'Квартира:',
                style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 20,
              width: 281,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.10,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
          ]),
          const SizedBox(height: 10),
          Align(alignment: Alignment.center, child: buttonShowAddress()),
        ]),
      ),
    );
  }

  Widget passport() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0.1,
            blurRadius: 13.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Гражданство:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Серия:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 109,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Номер:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 109,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Дата выдачи:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 255,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Срок действия:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 238,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Выдан:',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 308,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.10,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Align(alignment: Alignment.center, child: buttonShowPass()),
        ]),
      ),
    );
  }

  Widget account() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Text(
            'Электронная почта: nekiymolla56@gmail.com',
            style: GoogleFonts.lato(
              color: const Color(0xFF00AADF),
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Text(
            'Номер телефона: +79510381378',
            style: GoogleFonts.lato(
              color: const Color(0xFF00AADF),
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  Widget header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/businessman.jpeg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  spreadRadius: 0.10,
                  blurRadius: 13.0,
                ),
              ],
            ),
          ),
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Собачкин Иван Евгеньевич',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'дата рождения: 07.08.2003',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Статус: родитель',
                  style: GoogleFonts.lato(
                    color: const Color(0xFF00AADF),
                    fontSize: 18,
                  ),
                ),
              ),
            ]),
      ],
    );
  }

  Widget allPage() {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Личный кабинет родителя',
              style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        header(),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Учётная запись',
              style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        account(),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Паспорт',
              style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: passport(),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Адрес регистрации',
              style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: addressRegistration(),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Фактический адрес регистрации',
              style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: addressCurrentRegistration(),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Снилс',
              style: GoogleFonts.lato(
                  color: const Color(0xFF00AADF),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        snils(),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: buttonChange(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          bottom: false,
          child: Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: allPage(),
            ),
          )),
    );
  }
}
