import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/home_notification_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeNotificationController extends Cubit<HomeNotificationState>
    implements IBlocBase {
  HomeNotificationController() : super(HomeNotificationState());

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }
  List notifications = [
    {
      "isWarning": true,
      "label": 'Berita Hoax',
      "message": 'Hati-hati, berita ini mungkin tidak benar!',
    },
    {
      "isWarning": false,
      "label": 'Berita Aktual',
      "message": 'Ini adalah berita aktual terkini.',
    },
    {
      "isWarning": true,
      "label": 'Berita Hoax',
      "message": 'Hati-hati, berita ini mungkin tidak benar!',
    },
    {
      "isWarning": true,
      "label": 'Berita Hoax',
      "message": 'Hati-hati, berita ini mungkin tidak benar!',
    },
    {
      "isWarning": false,
      "label": 'Berita Aktual',
      "message": 'Ini adalah berita aktual terkini.',
    },
  ];
}
