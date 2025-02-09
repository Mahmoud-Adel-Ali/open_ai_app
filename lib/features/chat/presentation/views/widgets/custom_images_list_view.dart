import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_ai_app/core/widgets/toast_message.dart';
import '../../manager/chatting_cubit.dart';
import 'custom_selected_image_box.dart';

class CustomImagesListView extends StatelessWidget {
  const CustomImagesListView({super.key, required this.images});
  final List<XFile>? images;
  @override
  Widget build(BuildContext context) {
    return (images == null || images!.isEmpty)
        ? const SizedBox()
        : SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        showToastMessage(
                          context,
                          msg:
                              'If you need to remove this image .\n"Double Click"',
                          type: MessageType.info,
                        );
                      },
                      onDoubleTap: () {
                        context
                            .read<ChattingCubit>()
                            .deleteImage(images![index]);
                      },
                      child: CustomSelectedImageBox(path: images![index].path)),
                );
              },
            ),
          );
  }
}
