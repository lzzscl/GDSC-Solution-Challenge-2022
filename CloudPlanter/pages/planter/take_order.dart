import 'package:flutter/material.dart';
import 'package:myapp/common/utils/utils.dart';
import 'package:myapp/common/values/values.dart';
import 'package:myapp/common/widgets/widgets.dart';

class TakeOrder extends StatefulWidget {
  TakeOrder({Key? key}) : super(key: key);

  @override
  State<TakeOrder> createState() => _TakeOrderState();
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.thumbnail,
    required this.treeName,
    required this.description,
    required this.price,
  }) : super(key: key);

  final Widget thumbnail;
  final String treeName;
  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: thumbnail,
                ),
                Expanded(
                  flex: 3,
                  child: _VideoDescription(
                    title: treeName,
                    description: description,
                    price: price,
                  ),
                ),
                // const Icon(
                //   Icons.more_vert,
                //   size: 24.0,
                //   color: Colors.white,
                // ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: duSetWidth(5),
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: duSetFontSize(0.15 * 1080),
                    height: duSetHeight(0.01 * 2340),
                    child: btnFlatButtonWidget(
                        onPressed: () {
                          toastInfo(msg: 'accepted');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TakeOrder()));
                        },
                        title: 'accept'),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    width: duSetFontSize(0.15 * 1080),
                    height: duSetHeight(0.01 * 2340),
                    child: btnFlatButtonWidget(
                        onPressed: () {
                          toastInfo(msg: 'dismiss');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TakeOrder()));
                        },
                        title: 'dismiss'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  final String title;
  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: duSetFontSize(20),
              //color: Colors.white,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: duSetFontSize(12),
              //color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 25),
          ),
          Text(
            '${price} Point',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: duSetFontSize(16),
              color: Colors.orange[800],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildScroll() => ListView(children: _buildScrollTileList(10));

List<Container> _buildScrollTileList(int count) => List.generate(
      count,
      (index) => Container(
        height: duSetHeight(2 * 76),
        width: duSetWidth(0.8 * 76),
        margin: EdgeInsets.symmetric(
          horizontal: duSetWidth(15),
          vertical: duSetWidth(15),
        ),
        child: CustomListItem(
          description: tree_description[index],
          price: price_lst[index],
          thumbnail: Container(
            height: duSetHeight(1 * 76),
            width: duSetWidth(1.2 * 76),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/' + image_name[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          treeName: tree_name[index],
        ),
      ),
    );

class _TakeOrderState extends State<TakeOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Take Order'),
      ),
      drawer: LeftMenus(),
      resizeToAvoidBottomInset: false,
      body: Container(
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //   image: AssetImage('lib/assets/images/background.jpg'),
        //   fit: BoxFit.cover,
        // )),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            // height: duSetWidth(0.8 * 1080),
            // width: duSetWidth(0.8 * 1920),
            // decoration: BoxDecoration(
            //   color: AppColors.primaryBackground,
            //   boxShadow: const [
            //     Shadows.primaryShadow,
            //   ],
            //   borderRadius: BorderRadius.all(
            //       Radius.circular(duSetWidth(76 * 0.3))), // 父容器的50%
            // ),
            child: _buildScroll(),
          ),
        ),
      ),
    );
  }
}
