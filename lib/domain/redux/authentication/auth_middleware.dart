import 'package:flipper/data/main_database.dart';
import 'package:flipper/data/respositories/branch_repository.dart';
import 'package:flipper/data/respositories/business_repository.dart';
import 'package:flipper/data/respositories/general_repository.dart';
import 'package:flipper/data/respositories/user_repository.dart';
import 'package:flipper/domain/redux/app_actions/actions.dart';
import 'package:flipper/domain/redux/branch/branch_actions.dart';
import 'package:flipper/domain/redux/business/business_actions.dart';
import 'package:flipper/model/branch.dart';
import 'package:flipper/model/business.dart';
import 'package:flipper/model/category.dart';
import 'package:flipper/model/unit.dart';
import 'package:flipper/model/user.dart';
import 'package:flipper/routes.dart';
import 'package:flipper/routes/router.gr.dart';
import 'package:flipper/util/logger.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:redux/redux.dart";

import '../app_state.dart';
import 'auth_actions.dart';

/// Authentication Middleware
/// LogIn: Logging user in
/// LogOut: Logging user out
/// VerifyAuthenticationState: Verify if user is logged in

List<Middleware<AppState>> createAuthenticationMiddleware(
  UserRepository userRepository,
  BusinessRepository businessRepository,
  BranchRepository branchRepository,
  GeneralRepository generalRepository,
  GlobalKey<NavigatorState> navigatorKey,
) {
  return [
    TypedMiddleware<AppState, VerifyAuthenticationState>(_verifyAuthState(
        userRepository,
        businessRepository,
        branchRepository,
        generalRepository,
        navigatorKey)),
    TypedMiddleware<AppState, LogIn>(_authLogin(userRepository, navigatorKey)),
    TypedMiddleware<AppState, LogOutAction>(
        _authLogout(userRepository, navigatorKey)),
    TypedMiddleware<AppState, AfterLoginAction>(_verifyAuthState(userRepository,
        businessRepository, branchRepository, generalRepository, navigatorKey)),
  ];
}

void Function(Store<AppState> store, dynamic action, NextDispatcher next)
    _verifyAuthState(
  UserRepository userRepository,
  BusinessRepository businessRepository,
  BranchRepository branchRepository,
  GeneralRepository generalRepository,
  GlobalKey<NavigatorState> navigatorKey,
) {
  return (store, action, next) async {
    next(action);
    if (userRepository.checkAuth(store) == null) {
      navigatorKey.currentState.pushReplacementNamed(Routes.login);
      store.dispatch(Unauthenticated);
      return;
    }

    UserTableData user = await userRepository.checkAuth(store);

    TabsTableData tab = await generalRepository.getTab(store);

    List<UnitTableData> unitsList = await generalRepository.getUnits(store);

    List<CategoryTableData> categoryList =
        await generalRepository.getCategories(store);

    List<BranchTableData> branch = await branchRepository.getBranches(store);

    List<BusinessTableData> businesses =
        await businessRepository.getBusinesses(store);

    if (businesses.length == 0 || user == null) {
      Router.navigator.pushNamed(Router.afterSplash);
      return;
    } else {
      final _user = User((u) => u
        ..bearerToken = user.bearerToken
        ..username = user.username
        ..refreshToken = user.refreshToken
        ..status = user.status
        ..avatar = user.avatar
        ..email = user.email);

      Branch hint = Branch((b) => b
        ..id = branch[0].id
        ..name = branch[0].name);
      store.dispatch(OnSetBranchHint(branch: hint));

      List<Branch> branches = [];
      branch.forEach((b) => {
            branches.add(Branch((bu) => bu
              ..name = b.name
              ..id = b.id))
          });

      List<Unit> units = [];

      unitsList.forEach((b) => {
            units.add(Unit((u) => u
              ..name = b.name
              ..branchId = b.businessId
              ..businessId = b.businessId
              ..focused = b.focused
              ..id = b.id))
          });

      List<Category> categories = [];

      categoryList.forEach((c) => {
            categories.add(Category((u) => u
              ..name = c.name
              ..focused = c.focused
              ..businessId = u.businessId
              ..branchId = u.branchId
              ..id = c.id))
          });

      store.dispatch(UnitR(units));

      store.dispatch(UnitR(units));

      store.dispatch(OnBranchLoaded(branches: branches));

      store.dispatch(OnAuthenticated(user: _user));

      List<Business> businessList = [];
      businesses.forEach((b) => {
            businessList.add(Business((bu) => bu
              ..id = b.id
              ..abbreviation = b.name
              ..isActive = b.isActive
              ..name = b.name))
          });
      store.dispatch(OnBusinessLoaded(business: businessList));
      final currentTab = tab == null ? 0 : tab.tab;
      store.dispatch(CurrentTab(tab: currentTab));
      //branch
      if (businesses.length == 0) {
        Router.navigator.pushNamed(Router.signUpScreen);
      } else {
        Router.navigator.pushNamed(Router.dashboard);
      }
    }
  };
}

void Function(
  Store<AppState> store,
  dynamic action,
  NextDispatcher next,
) _authLogout(
  UserRepository userRepository,
  GlobalKey<NavigatorState> navigatorKey,
) {
  return (store, action, next) async {
    next(action);
    try {
      await userRepository.logOut();
      store.dispatch(OnLogoutSuccess());
    } catch (e) {
      Logger.w("Failed logout", e: e);
      store.dispatch(OnLogoutFail(e));
    }
  };
}

void Function(
  Store<AppState> store,
  dynamic action,
  NextDispatcher next,
) _authLogin(
  UserRepository userRepository,
  GlobalKey<NavigatorState> navigatorKey,
) {
  return (store, action, next) async {
    next(action);
  };
}