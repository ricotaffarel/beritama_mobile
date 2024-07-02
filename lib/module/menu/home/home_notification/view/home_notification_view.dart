import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeNotificationView extends StatefulWidget {
  const HomeNotificationView({Key? key}) : super(key: key);

  @override
  State<HomeNotificationView> createState() => _HomeNotificationViewState();
}

class _HomeNotificationViewState extends State<HomeNotificationView> {
  HomeNotificationController controller = HomeNotificationController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<HomeNotificationController>()) {
      GetIt.I.unregister<HomeNotificationController>();
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
      child: BlocListener<HomeNotificationController, HomeNotificationState>(
        listener: (context, state) {},
        child: BlocBuilder<HomeNotificationController, HomeNotificationState>(
          builder: (context, state) {
            final bloc = context.read<HomeNotificationController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    HomeNotificationController controller,
    HomeNotificationState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListView.builder(
                itemCount: controller.notifications.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.notifications[index];
                  return Container(
                    height: 80,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                    child: Row(
                      children: [
                        Icon(
                          item["isWarning"] == true
                              ? Icons.warning_rounded
                              : Icons.info,
                          size: 50.0,
                          color: item["isWarning"] == true
                              ? Colors.red
                              : primaryColor.withOpacity(0.5),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item["label"].toString(),
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                item["message"].toString(),
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
