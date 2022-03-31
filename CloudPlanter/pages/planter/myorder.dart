import 'package:flutter/material.dart';
import 'package:myapp/common/utils/utils.dart';
import 'package:myapp/common/widgets/widgets.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({Key? key}) : super(key: key);
  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

void _getSelectedRowInfo(dynamic name, dynamic price) {
  print('Name:$name  price: $price');
}

//HomePage, i.e., the community page
class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Main menu'),
      ),
      drawer: LeftMenus(),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          showCheckboxColumn: false, // <-- this is important
          onSelectAll: (b) {},
          sortAscending: true,
          columns: <DataColumn>[
            DataColumn(
              label: Text('Order ID'),
            ),
            DataColumn(
              label: Text('Create Time'),
            ),
            DataColumn(
              label: Text('Earnings'),
            ),
            DataColumn(
              label: Text('Logs'),
            ),
            DataColumn(
              label: Text('Pictures'),
            ),
          ],
          rows: items
              .map(
                (itemRow) => DataRow(
                  cells: [
                    DataCell(
                      Text(itemRow.orderid),
                      showEditIcon: false,
                      placeholder: false,
                    ),
                    DataCell(
                      Text(itemRow.ordertime),
                      showEditIcon: false,
                      placeholder: false,
                    ),
                    DataCell(
                      Text(itemRow.earning),
                      showEditIcon: false,
                      placeholder: false,
                    ),
                    DataCell(
                      Text(itemRow.details),
                      showEditIcon: true,
                      placeholder: false,
                      onTap: () {
                        _getSelectedRowInfo(itemRow.orderid, itemRow.earning);
                      },
                    ),
                    DataCell(
                      Text("upload"),
                      showEditIcon: true,
                      placeholder: false,
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class ItemInfo {
  String orderid;
  String ordertime;
  String earning;
  String details;
  ItemInfo({
    required this.orderid,
    required this.ordertime,
    required this.earning,
    required this.details,
  });
}

var items = <ItemInfo>[
  ItemInfo(
    orderid: '12345',
    ordertime: '2022-01-30',
    earning: '500',
    details: 'details',
  ),
  ItemInfo(
    orderid: '23456',
    ordertime: '2022-02-28',
    earning: '2000',
    details: 'details',
  ),
  ItemInfo(
    orderid: '34567',
    ordertime: '2022-03-30',
    earning: '1000',
    details: 'details',
  ),
];
