import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/chat_state.dart';
import 'package:beritama/bloc_util.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:injectable/injectable.dart';

@singleton
class ChatController extends Cubit<ChatState> implements IBlocBase {
  ChatController() : super(ChatState());
  late ScrollController scrollController;

  TextEditingController chatController = TextEditingController();

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

  final openAI = OpenAI.instance.build(
      token: "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",
      baseOption: HttpSetup(),
      enableLog: true);
  late String prompt = "";
  late List<Widget> pesan = [];

  Future<void> completeWithSSE(String i) async {
    final request = CompleteText(
        prompt: i, maxTokens: 200, temperature: 0, model: TextDavinci3Model());

    final response = await openAI.onCompletion(request: request);
    // final request = CompleteText(
    //     prompt: i, maxTokens: 200, model: TextDavinci3Model());
    // openAI.onCompletionSSE(request: request).listen((it) {
    //   prompt += it.choices.last.text;
    //   pesan.add(Container(
    //     child: BubbleSpecialThree(
    //       text: prompt,
    //       color: Color(0xFFE8E8EE),
    //       tail: true,
    //       isSender: false,
    //     ),
    //   ));
    //   update();
    // });
    pesan.add(Container(
      child: BubbleSpecialThree(
        text: response!.choices.last.text.trim(),
        color: Color(0xFFE8E8EE),
        tail: true,
        isSender: false,
      ),
    ));
    emit(state.copyWith());
  }

  Future<void> sendAdd(String i) async {
    completeWithSSE(i);
    pesan.add(Container(
      child: BubbleSpecialThree(
        text: i,
        color: Color(0xFF1B97F3),
        tail: true,
        isSender: true,
        textStyle: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ));
    emit(state.copyWith());
  }
}
