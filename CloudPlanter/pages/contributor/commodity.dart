import 'package:flutter/material.dart';
import 'package:myapp/common/values/values.dart';
import 'package:myapp/common/widgets/widgets.dart';
import 'package:myapp/pages/contributor/generate_order.dart';

class CommodityPage extends StatefulWidget {
  const CommodityPage({Key? key}) : super(key: key);

  @override
  State<CommodityPage> createState() => _CommodityPageState();
}

class _CommodityPageState extends State<CommodityPage> {
  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 230,
      padding: const EdgeInsets.all(40),
      mainAxisSpacing: 40,
      crossAxisSpacing: 40,
      children: _buildGridTileList(10));

  List<GestureDetector> _buildGridTileList(int count) => List.generate(
      count,
      (i) => GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GenerateOrder(
                          currentTree: TreeData(
                              tree_name[i],
                              tree_description[i],
                              price_lst[i].toDouble(),
                              'lib/assets/images/' + image_name[i]))));
            },
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.orange[400],
                            size: 20,
                          ),
                          Text(
                            price_lst[i].toString() + 'P',
                            style: TextStyle(
                              color: Colors.orange[400],
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      width: 450,
                      height: 100,
                    ),
                  ),
                  Container(
                    child: Text(
                      tree_name[i],
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    //padding: const EdgeInsets.all(16.0),
                    width: 450,
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      tree_description[i],
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    //padding: const EdgeInsets.all(16.0),
                    width: 450,
                    height: 40,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/' + image_name[i]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Commodity Page'),
      ),
      drawer: LeftMenus(),
      resizeToAvoidBottomInset: false,
      body: Container(
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //   image: AssetImage('lib/assets/images/background.jpg'),
        //   fit: BoxFit.cover,
        // )),
        child: Center(child: _buildGrid()),
      ),
    );
  }
}
