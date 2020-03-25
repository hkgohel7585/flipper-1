import 'package:flipper/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:customappbar/customappbar.dart';

class CompleteSaleScreen extends StatefulWidget {
  CompleteSaleScreen({Key key, this.cashReceived}) : super(key: key);
  final int cashReceived;

  @override
  _CompleteSaleScreenState createState() => _CompleteSaleScreenState();
}

class _CompleteSaleScreenState extends State<CompleteSaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        onPop: () {
          Router.navigator.pop();
        },
        disableButton: false,
        showActionButton: true,
        onPressedCallback: () async {},
        actionButtonName: 'Split Amount',
        icon: Icons.close,
        multi: 3,
        bottomSpacer: 48,
        title: null,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text("RWF" + widget.cashReceived.toString()),
            ),
            Center(
              child: Text("Select Payment Type Below"),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Router.navigator.pushNamed(Router.tenderScreen,
                    arguments: TenderScreenArguments(
                        cashReceived: widget.cashReceived));
              },
              child: ListTile(
                leading: Text("Cash"),
                trailing: Wrap(
                  children: <Widget>[Icon(Icons.arrow_forward_ios)],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}