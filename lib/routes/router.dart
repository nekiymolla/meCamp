import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:orenhackcamp/bottom_nav_page.dart';
import 'package:orenhackcamp/child_pages/one_camp_page.dart';
import 'package:orenhackcamp/child_pages/org_chat_page.dart';
import 'package:orenhackcamp/child_pages/personal_data.dart';
import 'package:orenhackcamp/enter_pages/confirm_password_page.dart';
import 'package:orenhackcamp/main_pages/camps_page.dart';
import 'package:orenhackcamp/main_pages/chat_page.dart';
import 'package:orenhackcamp/main_pages/map_page.dart';
import 'package:orenhackcamp/main_pages/profile_page.dart';

import '../enter_pages/authorization_page.dart';
import '../enter_pages/enter_page.dart';
import '../enter_pages/registration_page.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(page: ChoosePage, initial: true),
  AutoRoute(page: SignIn, path: '/signin'),
  AutoRoute(page: SignUp, path: '/signup'),
  AutoRoute(page: ConfirmPassword, path: '/confirmpassword'),
  AutoRoute<void>(page: NavPage, path: '/bottomnavpage', children: [
    AutoRoute<void>(
        page: EmptyRouterPage,
        name: 'EmptyCampsRouter',
        path: 'campsempty',
        children: [
          AutoRoute<void>(
            path: '',
            name: 'CampsPageRouter',
            page: CampsPage,
          ),
          AutoRoute<void>(
            path: ':campId',
            name: 'OneCampPageRouter',
            page: OneCamp,
          )
        ]),
    AutoRoute<void>(
        page: EmptyRouterPage,
        name: 'EmptyChatRouter',
        path: 'chatempty',
        children: [
          AutoRoute<void>(
            path: '',
            name: 'ChatPagesRouter',
            page: ChatPage,
          ),
          AutoRoute<void>(
            path: ':chatId',
            name: 'OrgChatPageRouter',
            page: OrgChat,
          )
        ]),
    AutoRoute<void>(
      page: MapPage,
      name: 'MapPageRouter',
      path: 'mappage',
    ),
    AutoRoute<void>(
        page: EmptyRouterPage,
        name: 'ProfilePageRouter',
        path: 'profilepage',
        children: [
          AutoRoute<void>(
            page: ProfilePage,
            name: 'ProfilePageNoEmptyRouter',
            path: '',
          ),
          AutoRoute<void>(
            page: PersonalData,
            name: 'PersonalInfoRouter',
            path: ':personalId',
          ),
        ]),
  ]),
])
class $AppRouter {}
