import 'package:flutter/cupertino.dart';
import 'package:project_name/app/common_widget/text_widget.dart';
import 'package:project_name/app/res/strings/strings.dart';

class NoDataFound extends StatelessWidget {
  const NoDataFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: TextWidget(text: AppStrings.noDataFound),
    );
  }
}
