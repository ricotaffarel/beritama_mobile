import 'package:beritama/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  late String prompt = "";
  late List<Widget> pesan = [];

  Future completeWithSSE(String i) async {
    // loadingChat();
    var response = await Dio().post(
      "$urlMl/botama",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "prompt": i,
      },
    );

    print(response.data);
    // String result = responses.map((item) => item['response'] as String).join();
    // print(result);

    selesaiChat();
    pesan.add(Container(
      child: BubbleSpecialThree(
        text: response.data['data'],
        color: Color(0xFFE8E8EE),
        tail: true,
        isSender: false,
      ),
    ));
    emit(state.copyWith());
  }

  Future<void> sendAdd(String i) async {
    pesan.add(Container(
      child: BubbleSpecialThree(
        text: i,
        color: primaryColor,
        tail: true,
        isSender: true,
        textStyle: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ));
    loadingChat();
    emit(state.copyWith());
    await completeWithSSE(i);
    emit(state.copyWith());
  }

  loadingChat() {
    pesan.add(Container(
      child: BubbleSpecialThree(
        textStyle: TextStyle(
          fontSize: 40.0,
        ),
        text: "...",
        color: Color(0xFFE8E8EE),
        tail: true,
        isSender: false,
      ).animate().shimmer(
            duration: 10.seconds,
            color: Colors.grey.shade100,
          ),
    ));
  }

  selesaiChat() {
    pesan.removeAt(pesan.length - 1);
  }
}
