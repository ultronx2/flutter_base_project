import 'package:flutter/cupertino.dart';
import 'package:pothole_detector/app/common_widget/text_widget.dart';
import 'package:pothole_detector/app/res/strings.dart';

class NoDataFound extends StatelessWidget {
  const NoDataFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: TextWidget(text: AppStrings.noDataFound),
    );
  }
}
