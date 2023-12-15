import 'package:beritama/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:beritama/shared/utils/state_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/event_registration_controller.dart';
import '../state/event_registration_state.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class EventRegistrationView extends StatefulWidget {
  const EventRegistrationView({Key? key}) : super(key: key);

  @override
  State<EventRegistrationView> createState() => _EventRegistrationViewState();
}

class _EventRegistrationViewState extends State<EventRegistrationView> {
  EventRegistrationController controller = EventRegistrationController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<EventRegistrationController>()) {
      GetIt.I.unregister<EventRegistrationController>();
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
      child: BlocListener<EventRegistrationController, EventRegistrationState>(
        listener: (context, state) {},
        child: BlocBuilder<EventRegistrationController, EventRegistrationState>(
          builder: (context, state) {
            final bloc = context.read<EventRegistrationController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    EventRegistrationController controller,
    EventRegistrationState state,
  ) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 160.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent.shade700,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 24,
                                    offset: Offset(0, 11),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  "Jan\n  20",
                                  style: GoogleFonts.poppins(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Organized By Komunitas media",
                          style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.grey[900],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 24.0,
                              color: Colors.grey[800],
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "2 Januari 2023 - 14:00",
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.grey[900],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 24.0,
                              color: Colors.grey[800],
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Indramayu",
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.grey[900],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child: CircleAvatar(
                                child: Text(
                                  "10 +",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "200++ people already registered",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: QButton(
                                label: "Register Here !",
                                onPressed: () {
                                  CustomShowDialog.showDialogWidget(
                                      context,
                                      Column(
                                        children: [
                                          Text(
                                            "Are you sure to registered this event ?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          QButton(
                                              label: "Close",
                                              onPressed: () => Get.back()),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          QButton(
                                              label: "Yes",
                                              onPressed: () async {
                                                Get.back();
                                                CustomShowDialog.showDialogInfo(
                                                    globalContext,
                                                    "Success Registered",
                                                    Icons.check_circle,
                                                    Colors.green);
                                                await Future.delayed(
                                                    Duration(seconds: 3));
                                                CustomShowDialog.hideDialog(
                                                    globalContext);
                                              }),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                        ],
                                      ));
                                },
                                color: Colors.green[600],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Recommendation Event",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        EventCardNews(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        EventCardNews()
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.share,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
