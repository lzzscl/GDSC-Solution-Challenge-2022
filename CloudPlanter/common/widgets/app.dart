import 'package:flutter/material.dart';
import 'package:myapp/common/values/values.dart';

/// 透明背景 AppBar
PreferredSizeWidget? transparentAppBar({
  @required BuildContext? context,
  List<Widget>? actions,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(''),
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: AppColors.primaryText,
      ),
      onPressed: () {
        Navigator.pop(context!);
      },
    ),
    actions: actions,
  );
}
