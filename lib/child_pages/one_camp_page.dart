import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class OneCamp extends StatefulWidget {
  final int campId;
  const OneCamp({super.key, @PathParam() required this.campId});

  @override
  State<OneCamp> createState() => _OneCampState();
}

class _OneCampState extends State<OneCamp> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
  }

  Widget buttonBooking() {
    // ignore: non_constant_identifier_names
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF004E8F),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
    return SizedBox(
      height: 50,
      width: 280,
      child: ElevatedButton(
          style: Elstyle,
          onPressed: () {
            showCustomDialog(context);
          },
          child: Text(
            'Забронировать',
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
              fontSize: 16,
            )),
          )),
    );
  }

  Widget legalInformation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Тип',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF004E8F),
            )),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Стационарный летний лагерь',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
              fontSize: 18,
              color: Color(0xFF004E8F),
            )),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Регион',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF004E8F),
            )),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Оренбург, Оренбургская область, село Ташла',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
              fontSize: 18,
              color: Color(0xFF004E8F),
            )),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Осталось мест',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF004E8F),
            )),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            '144 места',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
              fontSize: 18,
              color: Color(0xFF004E8F),
            )),
          ),
        ),
      ],
    );
  }

  Widget addressInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.only(right: 20, top: 80),
          child: Text(
            'Солнечная страна',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                fontSize: 22,
                color: Color(0xFF004E8F),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Где?',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF004E8F),
            )),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Оренбургская обл., 462002',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
              fontSize: 18,
              color: Color(0xFF004E8F),
            )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 10.0,
                    spreadRadius: 0.2,
                  ),
                ]),
            alignment: Alignment.topCenter,
            height: 200,
            child: const ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: YandexMap(
                  zoomGesturesEnabled: false,
                  scrollGesturesEnabled: false,
                )),
          ),
        )
      ],
    );
  }

  Widget buttonWebPay() {
    // ignore: non_constant_identifier_names
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF004E8F),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
    return SizedBox(
      height: 50,
      width: 280,
      child: ElevatedButton(
        style: Elstyle,
        onPressed: () {},
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.account_balance_rounded),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Оплата через онлайн банк',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  fontSize: 16,
                )),
              ),
            ]),
      ),
    );
  }

  Widget buttonCardPay() {
    // ignore: non_constant_identifier_names
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF004E8F),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
    return SizedBox(
      height: 50,
      width: 280,
      child: ElevatedButton(
        style: Elstyle,
        onPressed: () {
          _animationController.forward();
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.credit_card),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Оплата банковской картой',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  fontSize: 16,
                )),
              ),
            ]),
      ),
    );
  }

  void showCustomDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => Center(
          child: Container(
            height: 450,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 10.0,
                    spreadRadius: 0.2,
                  ),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Lottie.asset(
                    'assets/animations/success_blue.json',
                    controller: _animationController,
                    repeat: false,
                  ),
                ),
                Text(
                  'Выберите способ оплаты',
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontSize: 22,
                    color: Color(0xFF004E8F),
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                buttonWebPay(),
                const SizedBox(
                  height: 20,
                ),
                buttonCardPay(),
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/background_auth.png'),
        )),
        child: Column(
          children: <Widget>[
            addressInfo(),
            const SizedBox(height: 20),
            legalInformation(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: buttonBooking(),
            ),
          ],
        ),
      ),
    );
  }
}
