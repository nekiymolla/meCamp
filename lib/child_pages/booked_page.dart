import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookedPage extends StatefulWidget {
  final int bookedId;
  const BookedPage({super.key, @PathParam() required this.bookedId});

  @override
  State<BookedPage> createState() => _BookedPageState();
}

class _BookedPageState extends State<BookedPage> {
  Widget listCamping() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 210,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 0.10,
                blurRadius: 13.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 120,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/sol.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      'Солнечная страна',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: const Color(0xFF004E8F),
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      'с. Ташла',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: const Color(0xFF004E8F),
                      ),
                    )),
              ),
            ],
          ),
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
          ),
        ),
        child: SafeArea(
          child: ListView.builder(
            itemBuilder: (context, index) => listCamping(),
            itemCount: 1,
          ),
        ),
      ),
    );
  }
}
