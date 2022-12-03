import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/router.gr.dart';

class CampsPage extends StatefulWidget {
  const CampsPage({super.key});

  @override
  State<CampsPage> createState() => _CampsPageState();
}

class _CampsPageState extends State<CampsPage> {
  final _searchController = TextEditingController();
//String name, Image img, String address
  Widget listCamping() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: InkWell(
        onTap: () {
          context.router.navigate(OneCampPageRouter(campId: 1));
        },
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

  Widget buttonSearch() {
    // ignore: non_constant_identifier_names
    final ButtonStyle Elstyle = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.only(left: 0, right: 0));
    return SizedBox(
      height: 60,
      width: 80,
      child: ElevatedButton(
        style: Elstyle,
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
    );
  }

  Widget search() {
    return Center(
      child: Container(
        height: 60,
        width: 330,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10.0,
            spreadRadius: 0.2,
          ),
        ]),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: TextField(
            cursorColor: const Color(0xFF004E8F),
            style: const TextStyle(
              color: Color(0xFF004E8F),
            ),
            controller: _searchController,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintStyle: const TextStyle(color: Color(0xFF686868)),
              hintText: 'Поиск',
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 0.0),
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none)),
            ),
          ),
        ),
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
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: NestedScrollView(
              scrollDirection: Axis.vertical,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverAppBar(
                      toolbarHeight: 80,
                      snap: true,
                      floating: true,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              search(),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: buttonSearch(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
              body: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) => listCamping(),
                scrollDirection: Axis.vertical,
              )),
        ),
      ),
    );
  }
}
