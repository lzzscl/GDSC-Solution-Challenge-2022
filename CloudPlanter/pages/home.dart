import 'package:flutter/material.dart';
import 'package:myapp/common/utils/utils.dart';
import 'package:myapp/common/values/colors.dart';
import 'package:myapp/common/widgets/widgets.dart';
import 'package:myapp/pages/contributor/commodity.dart';
import 'package:myapp/pages/contributor/generate_order.dart';
import 'package:myapp/pages/contributor/order_record.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

//HomePage, i.e., the community page
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cloud Plants'),
      ),
      drawer: LeftMenus(),
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: duSetWidth(5),
          vertical: duSetWidth(5),
        ),
        child: Image.asset('lib/assets/images/homepage.png'),
      )),
    );
  }
}
