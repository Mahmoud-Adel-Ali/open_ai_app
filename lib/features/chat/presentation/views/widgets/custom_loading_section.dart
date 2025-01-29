import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/chatting_cubit.dart';
import 'ai_loading_message.dart';
import 'user_message.dart';

class CustomLoadingSection extends StatelessWidget {
  const CustomLoadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserMessage(
            message: context.read<ChattingCubit>().message,
            dateTime: DateTime.now()),
        const AILoadingMessage(),
      ],
    );
  }
}
