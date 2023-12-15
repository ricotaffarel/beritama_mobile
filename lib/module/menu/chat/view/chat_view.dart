import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/chat_controller.dart';
import '../state/chat_state.dart';
import 'package:get_it/get_it.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  ChatController controller = ChatController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ChatController>()) {
      GetIt.I.unregister<ChatController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
    controller.scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.scrollController
          .jumpTo(controller.scrollController.position.maxScrollExtent);
    });
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
      child: BlocListener<ChatController, ChatState>(
        listener: (context, state) {},
        child: BlocBuilder<ChatController, ChatState>(
          builder: (context, state) {
            final bloc = context.read<ChatController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ChatController controller,
    ChatState state,
  ) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text("BOTAMA"),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                        controller: controller.scrollController,
                          child: Container(
                    height: 670,
                    child: ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: controller.pesan.length,
                        itemBuilder: (BuildContext context, int index) {
                          return controller.pesan[index];
                        }),
                  ))),
                ],
              ),
              MessageBar(
                onSend: (_) {
                  print(_);
                  controller.sendAdd(_);
                },
                actions: [],
              ),
            ],
          )),
    );
  }
}
