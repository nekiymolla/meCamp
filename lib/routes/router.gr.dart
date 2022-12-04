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
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:auto_route/empty_router_widgets.dart' as _i7;
import 'package:flutter/material.dart' as _i18;

import '../bottom_nav_page.dart' as _i6;
import '../child_pages/booked_page.dart' as _i14;
import '../child_pages/kids_info_page.dart' as _i16;
import '../child_pages/kids_page.dart' as _i15;
import '../child_pages/one_camp_page.dart' as _i10;
import '../child_pages/org_chat_page.dart' as _i5;
import '../child_pages/personal_data.dart' as _i13;
import '../enter_pages/authorization_page.dart' as _i2;
import '../enter_pages/confirm_password_page.dart' as _i4;
import '../enter_pages/enter_page.dart' as _i1;
import '../enter_pages/registration_page.dart' as _i3;
import '../main_pages/camps_page.dart' as _i9;
import '../main_pages/chat_page.dart' as _i11;
import '../main_pages/map_page.dart' as _i8;
import '../main_pages/profile_page.dart' as _i12;

class AppRouter extends _i17.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    ChoosePageRoute.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.ChoosePage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.SignIn(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.SignUp(),
      );
    },
    ConfirmPasswordRoute.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i4.ConfirmPassword(),
      );
    },
    OrgChatRoute.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.OrgChat(),
      );
    },
    NavPageRoute.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.NavPage(),
      );
    },
    EmptyCampsRouter.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i7.EmptyRouterPage(),
      );
    },
    EmptyChatRouter.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i7.EmptyRouterPage(),
      );
    },
    MapPageRouter.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i8.MapPage(),
      );
    },
    ProfilePageRouter.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i7.EmptyRouterPage(),
      );
    },
    CampsPageRouter.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i9.CampsPage(),
      );
    },
    OneCampPageRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<OneCampPageRouterArgs>(
          orElse: () =>
              OneCampPageRouterArgs(campId: pathParams.getInt('campId')));
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: _i10.OneCamp(
          key: args.key,
          campId: args.campId,
        ),
      );
    },
    ChatPagesRouter.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i11.ChatPage(),
      );
    },
    ProfilePageNoEmptyRouter.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i12.ProfilePage(),
      );
    },
    PersonalInfoRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PersonalInfoRouterArgs>(
          orElse: () => PersonalInfoRouterArgs(
              personalId: pathParams.getInt('personalId')));
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: _i13.PersonalData(
          key: args.key,
          personalId: args.personalId,
        ),
      );
    },
    EmptyKidsPageRouter.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i7.EmptyRouterPage(),
      );
    },
    BookedPageRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BookedPageRouterArgs>(
          orElse: () =>
              BookedPageRouterArgs(bookedId: pathParams.getInt('bookedId')));
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: _i14.BookedPage(
          key: args.key,
          bookedId: args.bookedId,
        ),
      );
    },
    KidsPageRouter.name: (routeData) {
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: const _i15.KidsPage(),
      );
    },
    KidsInfoRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<KidsInfoRouterArgs>(
          orElse: () =>
              KidsInfoRouterArgs(kidsinfoId: pathParams.getInt('kidsinfoId')));
      return _i17.MaterialPageX<void>(
        routeData: routeData,
        child: _i16.KidsInfo(
          key: args.key,
          kidsinfoId: args.kidsinfoId,
        ),
      );
    },
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(
          ChoosePageRoute.name,
          path: '/',
        ),
        _i17.RouteConfig(
          SignInRoute.name,
          path: '/signin',
        ),
        _i17.RouteConfig(
          SignUpRoute.name,
          path: '/signup',
        ),
        _i17.RouteConfig(
          ConfirmPasswordRoute.name,
          path: '/confirmpassword',
        ),
        _i17.RouteConfig(
          OrgChatRoute.name,
          path: 'chatId',
        ),
        _i17.RouteConfig(
          NavPageRoute.name,
          path: '/bottomnavpage',
          children: [
            _i17.RouteConfig(
              EmptyCampsRouter.name,
              path: 'campsempty',
              parent: NavPageRoute.name,
              children: [
                _i17.RouteConfig(
                  CampsPageRouter.name,
                  path: '',
                  parent: EmptyCampsRouter.name,
                ),
                _i17.RouteConfig(
                  OneCampPageRouter.name,
                  path: ':campId',
                  parent: EmptyCampsRouter.name,
                ),
              ],
            ),
            _i17.RouteConfig(
              EmptyChatRouter.name,
              path: 'chatempty',
              parent: NavPageRoute.name,
              children: [
                _i17.RouteConfig(
                  ChatPagesRouter.name,
                  path: '',
                  parent: EmptyChatRouter.name,
                )
              ],
            ),
            _i17.RouteConfig(
              MapPageRouter.name,
              path: 'mappage',
              parent: NavPageRoute.name,
            ),
            _i17.RouteConfig(
              ProfilePageRouter.name,
              path: 'profilepage',
              parent: NavPageRoute.name,
              children: [
                _i17.RouteConfig(
                  ProfilePageNoEmptyRouter.name,
                  path: '',
                  parent: ProfilePageRouter.name,
                ),
                _i17.RouteConfig(
                  PersonalInfoRouter.name,
                  path: ':personalId',
                  parent: ProfilePageRouter.name,
                ),
                _i17.RouteConfig(
                  EmptyKidsPageRouter.name,
                  path: 'emptykidspage',
                  parent: ProfilePageRouter.name,
                  children: [
                    _i17.RouteConfig(
                      KidsPageRouter.name,
                      path: '',
                      parent: EmptyKidsPageRouter.name,
                    ),
                    _i17.RouteConfig(
                      KidsInfoRouter.name,
                      path: ':kidsinfoId',
                      parent: EmptyKidsPageRouter.name,
                    ),
                  ],
                ),
                _i17.RouteConfig(
                  BookedPageRouter.name,
                  path: ':bookedId',
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
class ChoosePageRoute extends _i17.PageRouteInfo<void> {
  const ChoosePageRoute()
      : super(
          ChoosePageRoute.name,
          path: '/',
        );

  static const String name = 'ChoosePageRoute';
}

/// generated route for
/// [_i2.SignIn]
class SignInRoute extends _i17.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/signin',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.SignUp]
class SignUpRoute extends _i17.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/signup',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.ConfirmPassword]
class ConfirmPasswordRoute extends _i17.PageRouteInfo<void> {
  const ConfirmPasswordRoute()
      : super(
          ConfirmPasswordRoute.name,
          path: '/confirmpassword',
        );

  static const String name = 'ConfirmPasswordRoute';
}

/// generated route for
/// [_i5.OrgChat]
class OrgChatRoute extends _i17.PageRouteInfo<void> {
  const OrgChatRoute()
      : super(
          OrgChatRoute.name,
          path: 'chatId',
        );

  static const String name = 'OrgChatRoute';
}

/// generated route for
/// [_i6.NavPage]
class NavPageRoute extends _i17.PageRouteInfo<void> {
  const NavPageRoute({List<_i17.PageRouteInfo>? children})
      : super(
          NavPageRoute.name,
          path: '/bottomnavpage',
          initialChildren: children,
        );

  static const String name = 'NavPageRoute';
}

/// generated route for
/// [_i7.EmptyRouterPage]
class EmptyCampsRouter extends _i17.PageRouteInfo<void> {
  const EmptyCampsRouter({List<_i17.PageRouteInfo>? children})
      : super(
          EmptyCampsRouter.name,
          path: 'campsempty',
          initialChildren: children,
        );

  static const String name = 'EmptyCampsRouter';
}

/// generated route for
/// [_i7.EmptyRouterPage]
class EmptyChatRouter extends _i17.PageRouteInfo<void> {
  const EmptyChatRouter({List<_i17.PageRouteInfo>? children})
      : super(
          EmptyChatRouter.name,
          path: 'chatempty',
          initialChildren: children,
        );

  static const String name = 'EmptyChatRouter';
}

/// generated route for
/// [_i8.MapPage]
class MapPageRouter extends _i17.PageRouteInfo<void> {
  const MapPageRouter()
      : super(
          MapPageRouter.name,
          path: 'mappage',
        );

  static const String name = 'MapPageRouter';
}

/// generated route for
/// [_i7.EmptyRouterPage]
class ProfilePageRouter extends _i17.PageRouteInfo<void> {
  const ProfilePageRouter({List<_i17.PageRouteInfo>? children})
      : super(
          ProfilePageRouter.name,
          path: 'profilepage',
          initialChildren: children,
        );

  static const String name = 'ProfilePageRouter';
}

/// generated route for
/// [_i9.CampsPage]
class CampsPageRouter extends _i17.PageRouteInfo<void> {
  const CampsPageRouter()
      : super(
          CampsPageRouter.name,
          path: '',
        );

  static const String name = 'CampsPageRouter';
}

/// generated route for
/// [_i10.OneCamp]
class OneCampPageRouter extends _i17.PageRouteInfo<OneCampPageRouterArgs> {
  OneCampPageRouter({
    _i18.Key? key,
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

  final _i18.Key? key;

  final int campId;

  @override
  String toString() {
    return 'OneCampPageRouterArgs{key: $key, campId: $campId}';
  }
}

/// generated route for
/// [_i11.ChatPage]
class ChatPagesRouter extends _i17.PageRouteInfo<void> {
  const ChatPagesRouter()
      : super(
          ChatPagesRouter.name,
          path: '',
        );

  static const String name = 'ChatPagesRouter';
}

/// generated route for
/// [_i12.ProfilePage]
class ProfilePageNoEmptyRouter extends _i17.PageRouteInfo<void> {
  const ProfilePageNoEmptyRouter()
      : super(
          ProfilePageNoEmptyRouter.name,
          path: '',
        );

  static const String name = 'ProfilePageNoEmptyRouter';
}

/// generated route for
/// [_i13.PersonalData]
class PersonalInfoRouter extends _i17.PageRouteInfo<PersonalInfoRouterArgs> {
  PersonalInfoRouter({
    _i18.Key? key,
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

  final _i18.Key? key;

  final int personalId;

  @override
  String toString() {
    return 'PersonalInfoRouterArgs{key: $key, personalId: $personalId}';
  }
}

/// generated route for
/// [_i7.EmptyRouterPage]
class EmptyKidsPageRouter extends _i17.PageRouteInfo<void> {
  const EmptyKidsPageRouter({List<_i17.PageRouteInfo>? children})
      : super(
          EmptyKidsPageRouter.name,
          path: 'emptykidspage',
          initialChildren: children,
        );

  static const String name = 'EmptyKidsPageRouter';
}

/// generated route for
/// [_i14.BookedPage]
class BookedPageRouter extends _i17.PageRouteInfo<BookedPageRouterArgs> {
  BookedPageRouter({
    _i18.Key? key,
    required int bookedId,
  }) : super(
          BookedPageRouter.name,
          path: ':bookedId',
          args: BookedPageRouterArgs(
            key: key,
            bookedId: bookedId,
          ),
          rawPathParams: {'bookedId': bookedId},
        );

  static const String name = 'BookedPageRouter';
}

class BookedPageRouterArgs {
  const BookedPageRouterArgs({
    this.key,
    required this.bookedId,
  });

  final _i18.Key? key;

  final int bookedId;

  @override
  String toString() {
    return 'BookedPageRouterArgs{key: $key, bookedId: $bookedId}';
  }
}

/// generated route for
/// [_i15.KidsPage]
class KidsPageRouter extends _i17.PageRouteInfo<void> {
  const KidsPageRouter()
      : super(
          KidsPageRouter.name,
          path: '',
        );

  static const String name = 'KidsPageRouter';
}

/// generated route for
/// [_i16.KidsInfo]
class KidsInfoRouter extends _i17.PageRouteInfo<KidsInfoRouterArgs> {
  KidsInfoRouter({
    _i18.Key? key,
    required int kidsinfoId,
  }) : super(
          KidsInfoRouter.name,
          path: ':kidsinfoId',
          args: KidsInfoRouterArgs(
            key: key,
            kidsinfoId: kidsinfoId,
          ),
          rawPathParams: {'kidsinfoId': kidsinfoId},
        );

  static const String name = 'KidsInfoRouter';
}

class KidsInfoRouterArgs {
  const KidsInfoRouterArgs({
    this.key,
    required this.kidsinfoId,
  });

  final _i18.Key? key;

  final int kidsinfoId;

  @override
  String toString() {
    return 'KidsInfoRouterArgs{key: $key, kidsinfoId: $kidsinfoId}';
  }
}
