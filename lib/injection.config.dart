import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/intro/login/controller/login_controller.dart' as _i10;
import 'module/intro/register/controller/register_controller.dart' as _i13;
import 'module/intro/splash_screen/controller/splash_screen_controller.dart'
    as _i14;
import 'module/menu/chat/controller/chat_controller.dart' as _i3;
import 'module/menu/community/community/controller/community_controller.dart'
    as _i4;
import 'module/menu/event/event/controller/event_controller.dart' as _i5;
import 'module/menu/event/event_registration/controller/event_registration_controller.dart'
    as _i6;
import 'module/menu/home/home/controller/home_controller.dart' as _i7;
import 'module/menu/home/home_news_detail/controller/home_news_detail_controller.dart'
    as _i8;
import 'module/menu/home/home_news_search/controller/home_news_search_controller.dart'
    as _i9;
import 'module/menu/main_navigation/controller/main_navigation_controller.dart'
    as _i11;
import 'module/menu/profile/profile/controller/profile_controller.dart' as _i12;

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
    gh.singleton<_i5.EventController>(_i5.EventController());
    gh.singleton<_i6.EventRegistrationController>(
        _i6.EventRegistrationController());
    gh.singleton<_i7.HomeController>(_i7.HomeController());
    gh.singleton<_i8.HomeNewsDetailController>(_i8.HomeNewsDetailController());
    gh.singleton<_i9.HomeNewsSearchController>(_i9.HomeNewsSearchController());
    gh.singleton<_i10.LoginController>(_i10.LoginController());
    gh.singleton<_i11.MainNavigationController>(
        _i11.MainNavigationController());
    gh.singleton<_i12.ProfileController>(_i12.ProfileController());
    gh.singleton<_i13.RegisterController>(_i13.RegisterController());
    gh.singleton<_i14.SplashScreenController>(_i14.SplashScreenController());
    return this;
  }
}
