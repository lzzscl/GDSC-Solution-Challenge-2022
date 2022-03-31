import "package:flutter/material.dart";

class ImageShow extends StatelessWidget {
  final String imgName;
  const ImageShow({Key? key, required this.imgName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/$imgName',
        height: 680,
        width: MediaQuery.of(context).size.width / 2,
        fit: BoxFit.cover);
  }
}
