import 'package:flutter/material.dart';
import 'package:open_ai_app/features/chat/presentation/views/widgets/chat_history_item.dart';

class ChatHistoryBody extends StatelessWidget {
  const ChatHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const ChatHistoryItem(
        chatName: 'chatName',
        date: 'date',
      ),
    );
  }
}
