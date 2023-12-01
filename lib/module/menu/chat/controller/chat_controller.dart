import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/chat_state.dart';
import 'package:beritama/bloc_util.dart';
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

  List<Map<String, dynamic>> dummyChatData = [
    {
      'sender': 'John',
      'message': 'Hello, how are you?',
      'timestamp': '2023-11-29',
      'isMe': false,
    },
    {
      'sender': 'Alice',
      'message': 'Hi John! I\'m doing well, thanks.',
      'timestamp': '2023-11-29',
      'isMe': true,
    },
    {
      'sender': 'John',
      'message': 'That\'s great to hear!',
      'timestamp': '2023-11-29',
      'isMe': false,
    },
    {
      'sender': 'Alice',
      'message': 'How was your day?',
      'timestamp': '2023-11-29',
      'isMe': true,
    },
    {
      'sender': 'John',
      'message': 'It was good. How about yours?',
      'timestamp': '2023-11-29',
      'isMe': false,
    },
    {
      'sender': 'Alice',
      'message': 'My day was busy but productive.',
      'timestamp': '2023-11-29',
      'isMe': true,
    },
    {
      'sender': 'John',
      'message': 'That\'s always a good thing!',
      'timestamp': '2023-11-29',
      'isMe': false,
    },
    {
      'sender': 'Alice',
      'message': 'Absolutely!',
      'timestamp': '2023-11-29',
      'isMe': true,
    },
    {
      'sender': 'John',
      'message': 'What are your plans for the evening?',
      'timestamp': '2023-11-29',
      'isMe': false,
    },
    {
      'sender': 'Alice',
      'message': "I'm going to relax and watch a movie. How about you?",
      'timestamp': '2023-11-29',
      'isMe': true,
    },
    {
      'sender': 'John',
      'message': 'I have some work to finish, but maybe later.',
      'timestamp': '2023-11-29',
      'isMe': false,
    },
    {
      'sender': 'Alice',
      'message': 'Sure, take your time.',
      'timestamp': '2023-11-29',
      'isMe': true,
    },
    {
      'sender': 'John',
      'message': 'Thanks!',
      'timestamp': '2023-11-29',
      'isMe': false,
    },
  ];
}
