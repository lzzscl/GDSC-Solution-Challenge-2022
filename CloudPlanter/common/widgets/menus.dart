import 'package:flutter/material.dart';
import 'package:myapp/common/values/values.dart';
import 'package:myapp/common/widgets/widgets.dart';
import 'package:myapp/pages/contributor/commodity.dart';
import 'package:myapp/pages/contributor/order_record.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/planter/myorder.dart';
import 'package:myapp/pages/planter/take_order.dart';

class LeftMenus extends StatefulWidget {
  LeftMenus({Key? key}) : super(key: key);

  @override
  State<LeftMenus> createState() => _LeftMenusState();
}

class _LeftMenusState extends State<LeftMenus> {
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     FooterButtonWidget(
    //       onPressed: () {
    //         Navigator.push(context,
    //             MaterialPageRoute(builder: (context) => const CommodityPage()));
    //       },
    //       gbColor: AppColors.primaryElement,
    //       title: "Commodity",
    //     ),
    //     FooterButtonWidget(
    //       onPressed: () {
    //         Navigator.push(context,
    //             MaterialPageRoute(builder: (context) => OrderRecord()));
    //       },
    //       gbColor: AppColors.primaryElement,
    //       title: "OrderRecord",
    //     ),
    //     FooterButtonWidget(
    //       onPressed: () {
    //         Navigator.push(context,
    //             MaterialPageRoute(builder: (context) => MyOrderPage()));
    //       },
    //       gbColor: AppColors.primaryElement,
    //       title: "MyOrderPage",
    //     ),
    //   ],
    // );

    return Drawer(
        child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text('Menu'),
        ),
        ListTile(
          title: Text('Home'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
        // ListTile(
        //   title: Text('Commodity'),
        //   onTap: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => const CommodityPage()));
        //   },
        // ),
        // ListTile(
        //   title: Text('OrderRecord'),
        //   onTap: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => OrderRecord()));
        //   },
        // ),
        ListTile(
          title: Text('OrderRecord'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyOrderPage()));
          },
        ),
        ListTile(
          title: Text('TakeOrder'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TakeOrder()));
          },
        ),
      ],
    ));
  }
}
