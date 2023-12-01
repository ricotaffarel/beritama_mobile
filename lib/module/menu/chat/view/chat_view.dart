import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/chat_controller.dart';
import '../state/chat_state.dart';
import 'package:get_it/get_it.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("John"),
        // centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: controller.scrollController,
          child: Column(
            children: [
              ListView.builder(
                itemCount: controller.dummyChatData.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                // reverse: true,
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.dummyChatData[index];
                  return Column(
                    children: [
                      if (index == 0 ||
                          item['timestamp'] !=
                              controller.dummyChatData[index - 1]['timestamp'])
                        Text(
                          item["timestamp"],
                        ),
                      Container(
                        alignment: item["isMe"] == true
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        margin: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                                color: item["isMe"] == true
                                    ? Colors.blueAccent.shade700
                                    : Colors.grey.shade600,
                              ),
                              child: Text(
                                item["message"],
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(12),
        child: Wrap(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50 + MediaQuery.of(context).viewInsets.bottom,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        color: Colors.white,
                      ),
                      height: 50,
                      child: ChatInputField(
                        controller: controller.chatController,
                        onSubmitted: (value) {},
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
