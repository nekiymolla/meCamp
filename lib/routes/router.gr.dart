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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:auto_route/empty_router_widgets.dart' as _i5;
import 'package:flutter/material.dart' as _i13;

import '../bottom_nav_page.dart' as _i4;
import '../child_pages/one_camp_page.dart' as _i9;
import '../child_pages/org_chat_page.dart' as _i11;
import '../enter_pages/authorization_page.dart' as _i2;
import '../enter_pages/enter_page.dart' as _i1;
import '../enter_pages/registration_page.dart' as _i3;
import '../main_pages/camps_page.dart' as _i8;
import '../main_pages/chat_page.dart' as _i10;
import '../main_pages/map_page.dart' as _i6;
import '../main_pages/profile_page.dart' as _i7;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    ChoosePageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ChoosePage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignIn(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignUp(),
      );
    },
    NavPageRoute.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i4.NavPage(),
      );
    },
    EmptyCampsRouter.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    EmptyChatRouter.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    MapPageRouter.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.MapPage(),
      );
    },
    ProfilePageRouter.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
    CampsPageRouter.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i8.CampsPage(),
      );
    },
    OneCampPageRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<OneCampPageRouterArgs>(
          orElse: () =>
              OneCampPageRouterArgs(campId: pathParams.getInt('campId')));
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: _i9.OneCamp(
          key: args.key,
          campId: args.campId,
        ),
      );
    },
    ChatPagesRouter.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i10.ChatPage(),
      );
    },
    OrgChatPageRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<OrgChatPageRouterArgs>(
          orElse: () =>
              OrgChatPageRouterArgs(chatId: pathParams.getInt('chatId')));
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: _i11.OrgChat(
          key: args.key,
          chatId: args.chatId,
        ),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          ChoosePageRoute.name,
          path: '/',
        ),
        _i12.RouteConfig(
          SignInRoute.name,
          path: '/signin',
        ),
        _i12.RouteConfig(
          SignUpRoute.name,
          path: '/signup',
        ),
        _i12.RouteConfig(
          NavPageRoute.name,
          path: '/bottomnavpage',
          children: [
            _i12.RouteConfig(
              EmptyCampsRouter.name,
              path: 'campsempty',
              parent: NavPageRoute.name,
              children: [
                _i12.RouteConfig(
                  CampsPageRouter.name,
                  path: '',
                  parent: EmptyCampsRouter.name,
                ),
                _i12.RouteConfig(
                  OneCampPageRouter.name,
                  path: ':campId',
                  parent: EmptyCampsRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              EmptyChatRouter.name,
              path: 'chatempty',
              parent: NavPageRoute.name,
              children: [
                _i12.RouteConfig(
                  ChatPagesRouter.name,
                  path: '',
                  parent: EmptyChatRouter.name,
                ),
                _i12.RouteConfig(
                  OrgChatPageRouter.name,
                  path: ':chatId',
                  parent: EmptyChatRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              MapPageRouter.name,
              path: 'mappage',
              parent: NavPageRoute.name,
            ),
            _i12.RouteConfig(
              ProfilePageRouter.name,
              path: 'profilepage',
              parent: NavPageRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.ChoosePage]
class ChoosePageRoute extends _i12.PageRouteInfo<void> {
  const ChoosePageRoute()
      : super(
          ChoosePageRoute.name,
          path: '/',
        );

  static const String name = 'ChoosePageRoute';
}

/// generated route for
/// [_i2.SignIn]
class SignInRoute extends _i12.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/signin',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.SignUp]
class SignUpRoute extends _i12.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/signup',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.NavPage]
class NavPageRoute extends _i12.PageRouteInfo<void> {
  const NavPageRoute({List<_i12.PageRouteInfo>? children})
      : super(
          NavPageRoute.name,
          path: '/bottomnavpage',
          initialChildren: children,
        );

  static const String name = 'NavPageRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class EmptyCampsRouter extends _i12.PageRouteInfo<void> {
  const EmptyCampsRouter({List<_i12.PageRouteInfo>? children})
      : super(
          EmptyCampsRouter.name,
          path: 'campsempty',
          initialChildren: children,
        );

  static const String name = 'EmptyCampsRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class EmptyChatRouter extends _i12.PageRouteInfo<void> {
  const EmptyChatRouter({List<_i12.PageRouteInfo>? children})
      : super(
          EmptyChatRouter.name,
          path: 'chatempty',
          initialChildren: children,
        );

  static const String name = 'EmptyChatRouter';
}

/// generated route for
/// [_i6.MapPage]
class MapPageRouter extends _i12.PageRouteInfo<void> {
  const MapPageRouter()
      : super(
          MapPageRouter.name,
          path: 'mappage',
        );

  static const String name = 'MapPageRouter';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfilePageRouter extends _i12.PageRouteInfo<void> {
  const ProfilePageRouter()
      : super(
          ProfilePageRouter.name,
          path: 'profilepage',
        );

  static const String name = 'ProfilePageRouter';
}

/// generated route for
/// [_i8.CampsPage]
class CampsPageRouter extends _i12.PageRouteInfo<void> {
  const CampsPageRouter()
      : super(
          CampsPageRouter.name,
          path: '',
        );

  static const String name = 'CampsPageRouter';
}

/// generated route for
/// [_i9.OneCamp]
class OneCampPageRouter extends _i12.PageRouteInfo<OneCampPageRouterArgs> {
  OneCampPageRouter({
    _i13.Key? key,
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

  final _i13.Key? key;

  final int campId;

  @override
  String toString() {
    return 'OneCampPageRouterArgs{key: $key, campId: $campId}';
  }
}

/// generated route for
/// [_i10.ChatPage]
class ChatPagesRouter extends _i12.PageRouteInfo<void> {
  const ChatPagesRouter()
      : super(
          ChatPagesRouter.name,
          path: '',
        );

  static const String name = 'ChatPagesRouter';
}

/// generated route for
/// [_i11.OrgChat]
class OrgChatPageRouter extends _i12.PageRouteInfo<OrgChatPageRouterArgs> {
  OrgChatPageRouter({
    _i13.Key? key,
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

  final _i13.Key? key;

  final int chatId;

  @override
  String toString() {
    return 'OrgChatPageRouterArgs{key: $key, chatId: $chatId}';
  }
}
