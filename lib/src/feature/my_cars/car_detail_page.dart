import 'package:flutter/material.dart';
import '../../design_system/colors/palette.dart';
import '../../design_system/design_system.dart';
import 'components/booking_history_widget.dart';
import 'components/tab_bar_widget.dart';
import 'components/vehicle_info_widget.dart';

class CarDetailPage extends StatefulWidget {
  const CarDetailPage({super.key});

  @override
  State<CarDetailPage> createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: AppColor.white,
        appBar: MyAppBar(
          title: 'Car name',
          icon: AppIcon.moreCircle,
          onTab: (){},
        ),

        body: Column(
          children: const [
            ///TabBar
             TabBarWidget(),
             Expanded(
              child: TabBarView(
                children: [
                  ///Vehicle Info
                  VehicleInfoWidget(),

                  ///Booking History
                  BookingHistoryWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
