import 'package:customappbar/customappbar.dart';
import 'package:flutter/material.dart';

class ReportWidget extends StatefulWidget {
  @override
  _ReportWidgetState createState() => _ReportWidgetState();
}

class _ReportWidgetState extends State<ReportWidget> {
  double tabLenght = 50.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: CommonAppBar(
            onPop: () {},
            title: 'Report',
            disableButton: false,
            showActionButton: true,
            onPressedCallback: () async {},
            actionButtonName: 'save',
            action: Container(
              width: double.infinity,
              child: TabBar(
                labelColor: Colors.black,
                isScrollable: true,
                tabs: [
                  Container(
                    width: tabLenght,
                    child: Tab(
                      text: '1D',
                    ),
                  ),
                  Container(
                    width: tabLenght,
                    child: Tab(
                      text: '1W',
                    ),
                  ),
                  Container(
                    width: tabLenght,
                    child: Tab(
                      text: '1M',
                    ),
                  ),
                  Container(
                    width: tabLenght,
                    child: Tab(
                      text: '3M',
                    ),
                  ),
                  Container(
                    width: tabLenght,
                    child: Tab(
                      text: '1Y',
                    ),
                  ),
                ],
              ),
            ),
            icon: Icons.close,
            multi: 3,
            bottomSpacer: 96,
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
