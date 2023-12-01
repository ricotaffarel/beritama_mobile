import 'package:beritama/core.dart';
import 'package:beritama/module/menu/event/event/widget/event_card_news.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/event_controller.dart';
import '../state/event_state.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class EventView extends StatefulWidget {
  const EventView({Key? key}) : super(key: key);

  @override
  State<EventView> createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  EventController controller = EventController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<EventController>()) {
      GetIt.I.unregister<EventController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<EventController, EventState>(
        listener: (context, state) {},
        child: BlocBuilder<EventController, EventState>(
          builder: (context, state) {
            final bloc = context.read<EventController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    EventController controller,
    EventState state,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "EVENTAMA",
                    style: GoogleFonts.poppins(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "'Mencari Kebenaran Berita'",
                    style: GoogleFonts.poppins(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 60,
                  child: CustomTextField(
                      hint: "Search",
                      prefixIcon: Icons.search,
                      onChanged: (value) {}),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ListView.builder(
                  itemCount: 10,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        onTap: () {
                          Get.to(EventRegistrationView());
                        },
                        child: EventCardNews(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
