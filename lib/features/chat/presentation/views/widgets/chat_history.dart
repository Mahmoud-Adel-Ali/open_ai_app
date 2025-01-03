import 'package:flutter/material.dart';

import 'chat_history_body.dart';
import 'chat_history_header.dart';

class ChatHistory extends StatelessWidget {
  const ChatHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: ChatHistoryHeader()),
        SliverToBoxAdapter(
          child: ChatHistoryBody(),
        ),
      ],
    );
  }
}
