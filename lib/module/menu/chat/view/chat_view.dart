import 'package:beritama/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          title: Text("BOTCHASER"),
        ),
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
                    controller: controller.scrollController,
                    child: Container(
                      height: 670,
                      padding: EdgeInsets.only(bottom: 30, top: 30),
                      child: ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: controller.pesan.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: controller.pesan[index],
                            );
                          }),
                    ))),
            MessageBar(
              sendButtonColor: primaryColor,
              onSend: (_) {
                print(_);
                controller.sendAdd(_);
              },
              actions: [],
            ),
          ],
        ),
      ),
    );
  }
}

/*
buatkan saya berita random berbahasa inggris dan berikan saya respon berupa json. response nya seperti ini

{
  "title": berisi judul berita berbahasa inggris,
  "description" : berisi desc berita berbahasa inggris,
  "author": youtube,
  "source": youtube,
  "publish_date": contoh nya 2024-06-30T00:00:00.000Z,
  "news_keywords": berisi keyword,
  "ambigous_keywords": "-",
  "is_training": diisi true saja,
  "label": pilih antara "aktual" atau "hoax"
}
*/
