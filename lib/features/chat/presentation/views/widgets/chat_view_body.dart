import 'package:flutter/material.dart';
import 'chat_list_view.dart';
import 'custom_images_list_view_bloc_builder.dart';
import 'send_message_section.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: ChatListView()),
        CustomImagesListViewBlocBuilder(),
        SendMessageSection(),
      ],
    );
  }
}
