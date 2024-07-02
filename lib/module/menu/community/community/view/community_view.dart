import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CommunityView extends StatefulWidget {
  const CommunityView({Key? key}) : super(key: key);

  @override
  State<CommunityView> createState() => _CommunityViewState();
}

class _CommunityViewState extends State<CommunityView> {
  CommunityController controller = CommunityController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CommunityController>()) {
      GetIt.I.unregister<CommunityController>();
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
      child: BlocListener<CommunityController, CommunityState>(
        listener: (context, state) {},
        child: BlocBuilder<CommunityController, CommunityState>(
          builder: (context, state) {
            final bloc = context.read<CommunityController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CommunityController controller,
    CommunityState state,
  ) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await controller.getNews();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                    height: 15.0,
                  ),
                  (controller.state.loading == true)
                      ? ShimmerHomeCardNews2()
                      : HomeCardNews4(
                          news: controller.news,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
