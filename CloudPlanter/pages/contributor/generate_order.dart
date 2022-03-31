import 'package:flutter/material.dart';
import 'package:myapp/common/utils/utils.dart';
import 'package:myapp/common/values/data.dart';
import 'package:myapp/common/values/values.dart';
import 'package:myapp/common/widgets/widgets.dart';
import 'package:myapp/pages/contributor/commodity.dart';

class GenerateOrder extends StatefulWidget {
  final TreeData currentTree;

  GenerateOrder({Key? key, required this.currentTree}) : super(key: key);

  @override
  State<GenerateOrder> createState() => _GenerateOrderState();
}

Widget _buildHead(TreeData currentTree) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          //height: duSetWidth(76),
          //width: duSetWidth(76),
          margin: EdgeInsets.symmetric(horizontal: duSetWidth(15)),
          child: Text(
            "Order",
            style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w800,
                fontSize: duSetFontSize(32),
                height: 1.5),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: duSetFontSize(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: duSetFontSize(0.2 * 1080),
                alignment: Alignment.centerLeft,
                child: Text(
                  currentTree.tree_name,
                  //"Tree name",
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.w800,
                      fontSize: duSetFontSize(26),
                      height: 1.5),
                ),
              ),
              Container(
                width: duSetFontSize(0.1 * 1080),
                alignment: Alignment.centerRight,
                child: Text(
                  "${currentTree.tree_price}P",
                  style: TextStyle(
                      color: Colors.orange[600],
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.w400,
                      fontSize: duSetFontSize(26),
                      height: 1.5),
                ),
              ),
            ],
          ),
        ),
        Divider(
          //color: Colors.black,
          thickness: 1,
          indent: 10,
          endIndent: 10,
          height: 20,
        ),
        Container(
          width: duSetFontSize(0.4 * 1080),
          margin: EdgeInsets.symmetric(horizontal: duSetWidth(15)),
          //margin: EdgeInsets.only(top: duSetFontSize(30)),
          alignment: Alignment.topCenter,
          child: Text(
            currentTree.tree_discription,
            style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w400,
                fontSize: duSetFontSize(16),
                height: 1.5),
          ),
        ),
        Divider(
          //color: Colors.black,
          thickness: 1,
          indent: 10,
          endIndent: 10,
          height: 20,
        ),
        Container(
          width: duSetFontSize(0.4 * 1080),
          margin: EdgeInsets.symmetric(horizontal: duSetFontSize(10)),
          alignment: Alignment.centerLeft,
          child: Text(
            "Personalized requirement",
            style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w600,
                fontSize: duSetFontSize(20),
                height: 1.5),
          ),
        ),
      ],
    ),
  );
}

class _GenerateOrderState extends State<GenerateOrder> {
  BoxShadow current_shadows_1 = Shadows.noShadow;
  double click_shadow_offset_1 = 0.0;
  BoxShadow current_shadows_2 = Shadows.noShadow;
  double click_shadow_offset_2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cloud Plants'),
      ),
      drawer: LeftMenus(),
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(widget.currentTree.tree_image),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Container(
              alignment: Alignment.center,
              height: duSetWidth(0.3 * 2340),
              width: duSetWidth(0.3 * 1080),
              decoration: BoxDecoration(
                color: AppColors.primaryBackground,
                boxShadow: const [
                  Shadows.primaryShadow,
                ],
                borderRadius: BorderRadius.all(
                    Radius.circular(duSetWidth(76 * 0.3))), // 父容器的50%
              ),
              child: Column(
                children: [
                  _buildHead(widget.currentTree),
                  Container(
                    width: duSetFontSize(0.4 * 1080),
                    margin: EdgeInsets.only(top: duSetFontSize(30)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: duSetWidth(0.02 * 1080),
                              height: duSetWidth(0.02 * 1080),
                              margin: EdgeInsets.symmetric(
                                  vertical: duSetFontSize(1),
                                  horizontal: duSetFontSize(10)),
                              child: RaisedButton(
                                onPressed: () {
                                  double tmp_offset = 0.0;
                                  BoxShadow tmp_shadow = Shadows.noShadow;
                                  if (click_shadow_offset_1 == 0.0) {
                                    tmp_offset = 60.0;
                                    tmp_shadow = Shadows.primaryShadow;
                                  }
                                  if (click_shadow_offset_1 == 60.0) {
                                    tmp_offset = 0.0;
                                    tmp_shadow = Shadows.noShadow;
                                  }
                                  setState(() {
                                    click_shadow_offset_1 = tmp_offset;
                                    current_shadows_1 = tmp_shadow;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            duSetWidth(0))), // 父容器的50%
                                  ),
                                ),
                              ),
                            ),
                            StatefulText(
                                contants: "Take at least one image per month.",
                                current_shadows: current_shadows_1,
                                click_shadow_offset: click_shadow_offset_1),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: duSetWidth(0.02 * 1080),
                              height: duSetWidth(0.02 * 1080),
                              margin: EdgeInsets.symmetric(
                                  vertical: duSetFontSize(1),
                                  horizontal: duSetFontSize(10)),
                              child: RaisedButton(
                                onPressed: () {
                                  double tmp_offset = 0.0;
                                  BoxShadow tmp_shadow = Shadows.noShadow;
                                  if (click_shadow_offset_2 == 0.0) {
                                    tmp_offset = 60.0;
                                    tmp_shadow = Shadows.primaryShadow;
                                  }
                                  if (click_shadow_offset_2 == 60.0) {
                                    tmp_offset = 0.0;
                                    tmp_shadow = Shadows.noShadow;
                                  }
                                  setState(() {
                                    click_shadow_offset_2 = tmp_offset;
                                    current_shadows_2 = tmp_shadow;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            duSetWidth(0))), // 父容器的50%
                                  ),
                                ),
                              ),
                            ),
                            StatefulText(
                                contants: "Plants must last 1 year.",
                                current_shadows: current_shadows_2,
                                click_shadow_offset: click_shadow_offset_2),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                      width: duSetFontSize(0.3 * 1080),
                      margin: EdgeInsets.only(bottom: duSetFontSize(30)),
                      child: Row(
                        children: [
                          Container(
                            width: duSetWidth(0.08 * 1080),
                            height: duSetHeight(0.03 * 1080),
                            child: btnFlatButtonWidget(
                                onPressed: () {
                                  toastInfo(msg: 'Submitted');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CommodityPage()));
                                },
                                title: 'Submit'),
                          ),
                          Spacer(),
                          Container(
                            width: duSetWidth(0.08 * 1080),
                            height: duSetHeight(0.03 * 1080),
                            child: btnFlatButtonWidget(
                                onPressed: () {
                                  toastInfo(msg: 'Canceled');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CommodityPage()));
                                },
                                title: 'Cancel'),
                          ),
                        ],
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
