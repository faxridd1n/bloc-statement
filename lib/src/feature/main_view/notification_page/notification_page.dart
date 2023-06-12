import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/design_system/design_system.dart';
import 'components/notification_card.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Notifications',
        icon: AppIcon.doubleCheck,
        onTab: (){},
      ),
      backgroundColor: AppColor.white,
      body: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        itemCount: 13,
        separatorBuilder: (BuildContext context, index){
          return 12.verticalSpace;
        },
        itemBuilder: (BuildContext context, index){
          return NotificationCard(
            index: index,
            date: DateTime.now(),
            title: 'Hi Dakota Johnson!',
            description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor',
          );
        },
      ),
    );
  }
}
