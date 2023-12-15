import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/profile_my_event_controller.dart';
import '../state/profile_my_event_state.dart';
import 'package:get_it/get_it.dart';

class ProfileMyEventView extends StatefulWidget {
  const ProfileMyEventView({Key? key}) : super(key: key);

  @override
  State<ProfileMyEventView> createState() => _ProfileMyEventViewState();
}

class _ProfileMyEventViewState extends State<ProfileMyEventView> {
  ProfileMyEventController controller = ProfileMyEventController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProfileMyEventController>()) {
      GetIt.I.unregister<ProfileMyEventController>();
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
      child: BlocListener<ProfileMyEventController, ProfileMyEventState>(
        listener: (context, state) {},
        child: BlocBuilder<ProfileMyEventController, ProfileMyEventState>(
          builder: (context, state) {
            final bloc = context.read<ProfileMyEventController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProfileMyEventController controller,
    ProfileMyEventState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Event"),
        bottom: TabBar(
          onTap: (a) {
            print(a);
          },
          tabs: [
            Tab(
              text: "Event Upcoming",
            ),
            Tab(
              text: "Event Previous",
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 100,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                            width: double.infinity,
                            height: 200,
                            child: Image.network(
                              "https://www.loket.com/images/dummy/blogs/5/banner.jpg",
                              fit: BoxFit.cover,
                            )),
                        Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                child: Text(
                                  "Festival Setiap Hari",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                child: Text(
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  "A festival is an extraordinary event celebrated by a community and centering on some characteristic aspect or aspects of that community and its religion or cultures. It is often marked as a local or national holiday, mela, or eid",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ));
              }),
          ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 100,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                            width: double.infinity,
                            height: 200,
                            child: Image.network(
                              "https://www.loket.com/images/dummy/blogs/5/banner.jpg",
                              fit: BoxFit.cover,
                            )),
                        Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                child: Text(
                                  "Festival Setiap Hari",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                child: Text(
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  "A festival is an extraordinary event celebrated by a community and centering on some characteristic aspect or aspects of that community and its religion or cultures. It is often marked as a local or national holiday, mela, or eid",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ));
              })
        ],
      ),
    );
  }
}
