import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../my_cars/components/tab_bar_widget.dart';
import 'components/active__widget.dart';
import 'components/history__widget.dart';
import 'components/no_order_widget.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

bool activeEmty = true;
bool historyEmty = true;

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            50.verticalSpace,

            ///TabBar
            const TabBarWidget(),
            Expanded(
              child: TabBarView(
                children: [
                  ///Active
                  if (activeEmty == false) const NoOrderWidget() else const ActiveWidget(),

                  ///History
                  if (historyEmty == false) const NoOrderWidget() else const HistoryWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
