// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:auto_route/empty_router_widgets.dart' as _i6;
import 'package:flutter/material.dart' as _i15;

import '../bottom_nav_page.dart' as _i5;
import '../child_pages/one_camp_page.dart' as _i9;
import '../child_pages/org_chat_page.dart' as _i11;
import '../child_pages/personal_data.dart' as _i13;
import '../enter_pages/authorization_page.dart' as _i2;
import '../enter_pages/confirm_password_page.dart' as _i4;
import '../enter_pages/enter_page.dart' as _i1;
import '../enter_pages/registration_page.dart' as _i3;
import '../main_pages/camps_page.dart' as _i8;
import '../main_pages/chat_page.dart' as _i10;
import '../main_pages/map_page.dart' as _i7;
import '../main_pages/profile_page.dart' as _i12;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    ChoosePageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ChoosePage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignIn(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignUp(),
      );
    },
    ConfirmPasswordRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ConfirmPassword(),
      );
    },
    NavPageRoute.name: (routeData) {
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.NavPage(),
      );
    },
    EmptyCampsRouter.name: (routeData) {
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.EmptyRouterPage(),
      );
    },
    EmptyChatRouter.name: (routeData) {
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.EmptyRouterPage(),
      );
    },
    MapPageRouter.name: (routeData) {
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: const _i7.MapPage(),
      );
    },
    ProfilePageRouter.name: (routeData) {
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.EmptyRouterPage(),
      );
    },
    CampsPageRouter.name: (routeData) {
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: const _i8.CampsPage(),
      );
    },
    OneCampPageRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<OneCampPageRouterArgs>(
          orElse: () =>
              OneCampPageRouterArgs(campId: pathParams.getInt('campId')));
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: _i9.OneCamp(
          key: args.key,
          campId: args.campId,
        ),
      );
    },
    ChatPagesRouter.name: (routeData) {
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: const _i10.ChatPage(),
      );
    },
    OrgChatPageRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<OrgChatPageRouterArgs>(
          orElse: () =>
              OrgChatPageRouterArgs(chatId: pathParams.getInt('chatId')));
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: _i11.OrgChat(
          key: args.key,
          chatId: args.chatId,
        ),
      );
    },
    ProfilePageNoEmptyRouter.name: (routeData) {
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: const _i12.ProfilePage(),
      );
    },
    PersonalInfoRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PersonalInfoRouterArgs>(
          orElse: () => PersonalInfoRouterArgs(
              personalId: pathParams.getInt('personalId')));
      return _i14.MaterialPageX<void>(
        routeData: routeData,
        child: _i13.PersonalData(
          key: args.key,
          personalId: args.personalId,
        ),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          ChoosePageRoute.name,
          path: '/',
        ),
        _i14.RouteConfig(
          SignInRoute.name,
          path: '/signin',
        ),
        _i14.RouteConfig(
          SignUpRoute.name,
          path: '/signup',
        ),
        _i14.RouteConfig(
          ConfirmPasswordRoute.name,
          path: '/confirmpassword',
        ),
        _i14.RouteConfig(
          NavPageRoute.name,
          path: '/bottomnavpage',
          children: [
            _i14.RouteConfig(
              EmptyCampsRouter.name,
              path: 'campsempty',
              parent: NavPageRoute.name,
              children: [
                _i14.RouteConfig(
                  CampsPageRouter.name,
                  path: '',
                  parent: EmptyCampsRouter.name,
                ),
                _i14.RouteConfig(
                  OneCampPageRouter.name,
                  path: ':campId',
                  parent: EmptyCampsRouter.name,
                ),
              ],
            ),
            _i14.RouteConfig(
              EmptyChatRouter.name,
              path: 'chatempty',
              parent: NavPageRoute.name,
              children: [
                _i14.RouteConfig(
                  ChatPagesRouter.name,
                  path: '',
                  parent: EmptyChatRouter.name,
                ),
                _i14.RouteConfig(
                  OrgChatPageRouter.name,
                  path: ':chatId',
                  parent: EmptyChatRouter.name,
                ),
              ],
            ),
            _i14.RouteConfig(
              MapPageRouter.name,
              path: 'mappage',
              parent: NavPageRoute.name,
            ),
            _i14.RouteConfig(
              ProfilePageRouter.name,
              path: 'profilepage',
              parent: NavPageRoute.name,
              children: [
                _i14.RouteConfig(
                  ProfilePageNoEmptyRouter.name,
                  path: '',
                  parent: ProfilePageRouter.name,
                ),
                _i14.RouteConfig(
                  PersonalInfoRouter.name,
                  path: ':personalId',
                  parent: ProfilePageRouter.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.ChoosePage]
class ChoosePageRoute extends _i14.PageRouteInfo<void> {
  const ChoosePageRoute()
      : super(
          ChoosePageRoute.name,
          path: '/',
        );

  static const String name = 'ChoosePageRoute';
}

/// generated route for
/// [_i2.SignIn]
class SignInRoute extends _i14.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/signin',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.SignUp]
class SignUpRoute extends _i14.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/signup',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.ConfirmPassword]
class ConfirmPasswordRoute extends _i14.PageRouteInfo<void> {
  const ConfirmPasswordRoute()
      : super(
          ConfirmPasswordRoute.name,
          path: '/confirmpassword',
        );

  static const String name = 'ConfirmPasswordRoute';
}

/// generated route for
/// [_i5.NavPage]
class NavPageRoute extends _i14.PageRouteInfo<void> {
  const NavPageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          NavPageRoute.name,
          path: '/bottomnavpage',
          initialChildren: children,
        );

  static const String name = 'NavPageRoute';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class EmptyCampsRouter extends _i14.PageRouteInfo<void> {
  const EmptyCampsRouter({List<_i14.PageRouteInfo>? children})
      : super(
          EmptyCampsRouter.name,
          path: 'campsempty',
          initialChildren: children,
        );

  static const String name = 'EmptyCampsRouter';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class EmptyChatRouter extends _i14.PageRouteInfo<void> {
  const EmptyChatRouter({List<_i14.PageRouteInfo>? children})
      : super(
          EmptyChatRouter.name,
          path: 'chatempty',
          initialChildren: children,
        );

  static const String name = 'EmptyChatRouter';
}

/// generated route for
/// [_i7.MapPage]
class MapPageRouter extends _i14.PageRouteInfo<void> {
  const MapPageRouter()
      : super(
          MapPageRouter.name,
          path: 'mappage',
        );

  static const String name = 'MapPageRouter';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class ProfilePageRouter extends _i14.PageRouteInfo<void> {
  const ProfilePageRouter({List<_i14.PageRouteInfo>? children})
      : super(
          ProfilePageRouter.name,
          path: 'profilepage',
          initialChildren: children,
        );

  static const String name = 'ProfilePageRouter';
}

/// generated route for
/// [_i8.CampsPage]
class CampsPageRouter extends _i14.PageRouteInfo<void> {
  const CampsPageRouter()
      : super(
          CampsPageRouter.name,
          path: '',
        );

  static const String name = 'CampsPageRouter';
}

/// generated route for
/// [_i9.OneCamp]
class OneCampPageRouter extends _i14.PageRouteInfo<OneCampPageRouterArgs> {
  OneCampPageRouter({
    _i15.Key? key,
    required int campId,
  }) : super(
          OneCampPageRouter.name,
          path: ':campId',
          args: OneCampPageRouterArgs(
            key: key,
            campId: campId,
          ),
          rawPathParams: {'campId': campId},
        );

  static const String name = 'OneCampPageRouter';
}

class OneCampPageRouterArgs {
  const OneCampPageRouterArgs({
    this.key,
    required this.campId,
  });

  final _i15.Key? key;

  final int campId;

  @override
  String toString() {
    return 'OneCampPageRouterArgs{key: $key, campId: $campId}';
  }
}

/// generated route for
/// [_i10.ChatPage]
class ChatPagesRouter extends _i14.PageRouteInfo<void> {
  const ChatPagesRouter()
      : super(
          ChatPagesRouter.name,
          path: '',
        );

  static const String name = 'ChatPagesRouter';
}

/// generated route for
/// [_i11.OrgChat]
class OrgChatPageRouter extends _i14.PageRouteInfo<OrgChatPageRouterArgs> {
  OrgChatPageRouter({
    _i15.Key? key,
    required int chatId,
  }) : super(
          OrgChatPageRouter.name,
          path: ':chatId',
          args: OrgChatPageRouterArgs(
            key: key,
            chatId: chatId,
          ),
          rawPathParams: {'chatId': chatId},
        );

  static const String name = 'OrgChatPageRouter';
}

class OrgChatPageRouterArgs {
  const OrgChatPageRouterArgs({
    this.key,
    required this.chatId,
  });

  final _i15.Key? key;

  final int chatId;

  @override
  String toString() {
    return 'OrgChatPageRouterArgs{key: $key, chatId: $chatId}';
  }
}

/// generated route for
/// [_i12.ProfilePage]
class ProfilePageNoEmptyRouter extends _i14.PageRouteInfo<void> {
  const ProfilePageNoEmptyRouter()
      : super(
          ProfilePageNoEmptyRouter.name,
          path: '',
        );

  static const String name = 'ProfilePageNoEmptyRouter';
}

/// generated route for
/// [_i13.PersonalData]
class PersonalInfoRouter extends _i14.PageRouteInfo<PersonalInfoRouterArgs> {
  PersonalInfoRouter({
    _i15.Key? key,
    required int personalId,
  }) : super(
          PersonalInfoRouter.name,
          path: ':personalId',
          args: PersonalInfoRouterArgs(
            key: key,
            personalId: personalId,
          ),
          rawPathParams: {'personalId': personalId},
        );

  static const String name = 'PersonalInfoRouter';
}

class PersonalInfoRouterArgs {
  const PersonalInfoRouterArgs({
    this.key,
    required this.personalId,
  });

  final _i15.Key? key;

  final int personalId;

  @override
  String toString() {
    return 'PersonalInfoRouterArgs{key: $key, personalId: $personalId}';
  }
}
