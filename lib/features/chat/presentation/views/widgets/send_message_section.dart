import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/chating_cubit.dart';
import 'custom_text_form_field.dart';
import 'pick_image_icon.dart';

class SendMessageSection extends StatelessWidget {
  const SendMessageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const PickImageIcon(),
          const SizedBox(width: 12),
          Expanded(
            child: CustomTextFormField(
              controller: context.read<ChatingCubit>().chatTextFeild,
              hintTxt: 'Type your message here...',
              suffix: IconButton(
                onPressed: () {
                  // TODO: Implement send message functionality
                },
                icon: const Icon(Icons.send_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
