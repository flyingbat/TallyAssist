import 'package:flutter/material.dart';
import 'package:tassist/core/models/stockitem.dart';
import 'package:intl/intl.dart';
import 'package:tassist/ui/widgets/childdetailcard.dart';
import 'package:tassist/ui/widgets/expansibledetailcard.dart';

var formatter = new DateFormat('dd-MM-yyyy');
// TODO
var numberFormatter = new NumberFormat('##,##,##,##,###.##', "en_US");

class StockItemTile extends StatelessWidget {
  final StockItem stockItem;

  StockItemTile({this.stockItem});

  @override
  Widget build(BuildContext context) {
    return ExpansibleDetailCard(
      childdetailCard: ChildDetailCard(
        stockItem.name,
        '# ${stockItem.masterId}',
        'CR: Rs.${stockItem.closingRate.toString()}',
        '${stockItem.closingBalance.toString()} ${stockItem.baseUnit}',
        'Rs. ${stockItem.closingValue.toString()}',

      ),
      title1: 'Standard Cost',
      info1: 'Rs. ${stockItem.standardCost.toString()}',
      title2: 'Standard Price',
      info2: 'Rs. ${stockItem.standardPrice.toString()}',
      title3: 'Minimum Qty.',
      info3: 'Not available',
    );
  }
}