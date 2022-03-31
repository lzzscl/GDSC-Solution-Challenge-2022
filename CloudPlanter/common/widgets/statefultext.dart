import 'package:flutter/material.dart';
import 'package:myapp/common/utils/utils.dart';
import 'package:myapp/common/values/values.dart';

class StatefulText extends StatefulWidget {
  final String contants;
  final BoxShadow current_shadows;
  final double click_shadow_offset;

  StatefulText({
    Key? key,
    required this.current_shadows,
    required this.click_shadow_offset,
    required this.contants,
  }) : super(key: key);

  @override
  State<StatefulText> createState() => _StatefulTextState();
}

class _StatefulTextState extends State<StatefulText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: duSetWidth(0.28 * 1080 - 40),
      margin: EdgeInsets.symmetric(
          vertical: duSetFontSize(5), horizontal: duSetFontSize(10)),
      decoration: BoxDecoration(
        color: AppColors.primaryBackground,
        boxShadow: [
          widget.current_shadows,
        ],
        borderRadius: BorderRadius.all(
            Radius.circular(duSetWidth(widget.click_shadow_offset))), // 父容器的50%
      ),
      child: Text(
        widget.contants,
        style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: "Avenir",
            fontWeight: FontWeight.w400,
            fontSize: duSetFontSize(16),
            height: 1.5,
            shadows: <BoxShadow>[
              widget.current_shadows,
            ]),
      ),
    );
  }
}
