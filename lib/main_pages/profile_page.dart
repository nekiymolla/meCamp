import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget profileCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              spreadRadius: 0.10,
              blurRadius: 13.0,
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Container(
              height: 125,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/family.jpeg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 125,
                child: Padding(
                  padding: const EdgeInsets.only(left: 150, top: 5),
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Иван Собачкин',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFF004E8F),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.phone_android,
                          color: Color(0xFF004E8F),
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '79510381378',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFF004E8F), fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.cake_outlined,
                          color: Color(0xFF004E8F),
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '07.08.2003',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFF004E8F), fontSize: 14),
                        )
                      ],
                    )
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 30),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/businessman.jpeg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardWithParams() {
    return SizedBox(
      height: 600,
      child: Column(
        children: <Widget>[
          profileCard(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_auth.png'),
          ),
        ),
        child: SafeArea(child: cardWithParams()),
      ),
    );
  }
}
