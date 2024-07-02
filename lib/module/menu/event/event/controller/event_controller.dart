import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/event_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class EventController extends Cubit<EventState> implements IBlocBase {
  EventController() : super(EventState());

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

  List<Map<String, String>> eventList = [
    {
      "image":
          "https://www.suarasurabaya.net/wp-content/uploads/2019/04/kk219640_clip10.jpg",
      "title": "Event Hoax Pemilu",
      "organize": "Organized By Komunitas Media",
      "author": "rico",
      "date": "2 Juli 2024 - 14.00 (Online)",
      "location": "Indramayu",
      "date_short": "20 Jul",
      "time": "5 minutes ago"
    },
    {
      "image":
          "https://www.unja.ac.id/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-14-at-13.35.25-1.jpeg",
      "title": "Seminar Teknologi AI",
      "organize": "Organized By Tech Community",
      "author": "Siti",
      "date": "5 Agustus 2024 - 10.00 (Online)",
      "location": "Jakarta",
      "date_short": "5 Aug",
      "time": "10 minutes ago"
    },
    {
      "image":
          "https://fib.unair.ac.id/linguistik/wp-content/uploads/2020/11/E-literasi-2.jpg",
      "title": "Workshop Keamanan Siber",
      "organize": "Organized By Cyber Security Club",
      "author": "Budi",
      "date": "12 September 2024 - 09.00 (Online)",
      "location": "Bandung",
      "date_short": "12 Sep",
      "time": "30 minutes ago"
    },
    {
      "image":
          "https://www.unila.ac.id/wp-content/uploads/2019/09/Hoax-Boosting.jpg",
      "title": "Konferensi Data Science",
      "organize": "Organized By Data Science Association",
      "author": "Ana",
      "date": "25 Oktober 2024 - 13.00 (Online)",
      "location": "Surabaya",
      "date_short": "25 Oct",
      "time": "1 hour ago"
    },
  ];
  bool loading = false;
  getEVent() async {
    loading = true;
    emit(state.copyWith());

    await Future.delayed(Duration(seconds: 2));

    loading = false;
    emit(state.copyWith());
  }

  increment() {
    state.counter++;
    emit(state.copyWith());
  }
}
