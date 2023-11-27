import 'package:flutter/material.dart';
import 'HistoryBooking.dart';
import 'HistoryCompleted.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 80,
          elevation: 4,
          title: Container(
            child: Text(
              'History',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(vertical: 4),
            tabs: [
              Tab(text: 'Booking'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.white,
              child: Center(
                child: HistoryBooking(),
              ),
            ),
            Container(
              color: Colors.white,
              child: Center(
                child: HistoryCompleted(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
