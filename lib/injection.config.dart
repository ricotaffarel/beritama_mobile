// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/intro/login/controller/login_controller.dart' as _i14;
import 'module/intro/register/controller/register_controller.dart' as _i20;
import 'module/intro/splash_screen/controller/splash_screen_controller.dart'
    as _i21;
import 'module/menu/chat/controller/chat_controller.dart' as _i3;
import 'module/menu/community/community/controller/community_controller.dart'
    as _i4;
import 'module/menu/community/community_detail/controller/community_detail_controller.dart'
    as _i5;
import 'module/menu/event/event/controller/event_controller.dart' as _i6;
import 'module/menu/event/event_registration/controller/event_registration_controller.dart'
    as _i7;
import 'module/menu/home/home/controller/home_controller.dart' as _i8;
import 'module/menu/home/home_news_detail/controller/home_news_detail_controller.dart'
    as _i10;
import 'module/menu/home/home_news_detail2/controller/home_news_detail2_controller.dart'
    as _i9;
import 'module/menu/home/home_news_search/controller/home_news_search_controller.dart'
    as _i11;
import 'module/menu/home/home_news_with_category/controller/home_news_with_category_controller.dart'
    as _i12;
import 'module/menu/home/home_notification/controller/home_notification_controller.dart'
    as _i13;
import 'module/menu/main_navigation/controller/main_navigation_controller.dart'
    as _i15;
import 'module/menu/profile/profile/controller/profile_controller.dart' as _i17;
import 'module/menu/profile/profile_change_password/controller/profile_change_password_controller.dart'
    as _i16;
import 'module/menu/profile/profile_edit/controller/profile_edit_controller.dart'
    as _i18;
import 'module/menu/profile/profile_my_event/controller/profile_my_event_controller.dart'
    as _i19;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ChatController>(_i3.ChatController());
    gh.singleton<_i4.CommunityController>(_i4.CommunityController());
    gh.singleton<_i5.CommunityDetailController>(
        _i5.CommunityDetailController());
    gh.singleton<_i6.EventController>(_i6.EventController());
    gh.singleton<_i7.EventRegistrationController>(
        _i7.EventRegistrationController());
    gh.singleton<_i8.HomeController>(_i8.HomeController());
    gh.singleton<_i9.HomeNewsDetail2Controller>(
        _i9.HomeNewsDetail2Controller());
    gh.singleton<_i10.HomeNewsDetailController>(
        _i10.HomeNewsDetailController());
    gh.singleton<_i11.HomeNewsSearchController>(
        _i11.HomeNewsSearchController());
    gh.singleton<_i12.HomeNewsWithCategoryController>(
        _i12.HomeNewsWithCategoryController());
    gh.singleton<_i13.HomeNotificationController>(
        _i13.HomeNotificationController());
    gh.singleton<_i14.LoginController>(_i14.LoginController());
    gh.singleton<_i15.MainNavigationController>(
        _i15.MainNavigationController());
    gh.singleton<_i16.ProfileChangePasswordController>(
        _i16.ProfileChangePasswordController());
    gh.singleton<_i17.ProfileController>(_i17.ProfileController());
    gh.singleton<_i18.ProfileEditController>(_i18.ProfileEditController());
    gh.singleton<_i19.ProfileMyEventController>(
        _i19.ProfileMyEventController());
    gh.singleton<_i20.RegisterController>(_i20.RegisterController());
    gh.singleton<_i21.SplashScreenController>(_i21.SplashScreenController());
    return this;
  }
}
