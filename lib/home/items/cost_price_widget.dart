import 'package:flipper/data/main_database.dart';
import 'package:flipper/domain/redux/app_actions/actions.dart';
import 'package:flipper/domain/redux/app_state.dart';
import 'package:flipper/generated/l10n.dart';
import 'package:flipper/presentation/home/common_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class BuildCostPriceWidget extends StatefulWidget {
  const BuildCostPriceWidget(
      {Key key,
      @required this.vm,
      @required this.context,
      @required this.itemName,
      @required this.itemId})
      : super(key: key);

  final CommonViewModel vm;
  final int itemId;
  final String itemName;
  final BuildContext context;

  @override
  _BuildCostPriceWidgetState createState() => _BuildCostPriceWidgetState();
}

class _BuildCostPriceWidgetState extends State<BuildCostPriceWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.black),
          onChanged: (costPrice) async {
            ItemTableData item = await widget.vm.database.itemDao.getItemBy(
              name: widget.itemName,
              branchId: widget.vm.branch.id,
              itemId: widget.itemId,
            );

            VariationTableData variation = await widget.vm.database.variationDao
                .getVariationBy('tmp', widget.vm.branch.id);

            StoreProvider.of<AppState>(context).dispatch(
              SaveRegular(
                costPrice: double.parse(costPrice),
                retailPrice: 0,
                itemId: item.id,
                name: variation.name,
              ),
            );
            //on typing here should save Regular Item variation
          },
          decoration: InputDecoration(
              hintText: S.of(context).costPrice, focusColor: Colors.blue),
        ),
      ),
    );
  }
}