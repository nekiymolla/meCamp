import 'package:auto_route/auto_route.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:orenhackcamp/routes/router.gr.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        routes: const [
          EmptyCampsRouter(),
          EmptyChatRouter(),
          MapPageRouter(),
          ProfilePageRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return DotNavigationBar(
            marginR: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            borderRadius: 25,
            enableFloatingNavBar: true,
            backgroundColor: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            dotIndicatorColor: const Color(0xFF004E8F),
            selectedItemColor: const Color(0xFF004E8F),
            unselectedItemColor: Colors.black,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              //camps
              DotNavigationBarItem(
                icon: const Icon(Icons.holiday_village_outlined),
                selectedColor: const Color(0xFF004E8F),
              ),
              //chat
              DotNavigationBarItem(
                icon: const Icon(Icons.chat_outlined),
                selectedColor: const Color(0xFF004E8F),
              ),
              //map
              DotNavigationBarItem(
                icon: const Icon(Icons.map_outlined),
                selectedColor: const Color(0xFF004E8F),
              ),
              //profile
              DotNavigationBarItem(
                icon: const Icon(Icons.person_outline_rounded),
                selectedColor: const Color(0xFF004E8F),
              ),
            ],
          );
        });
  }
}
