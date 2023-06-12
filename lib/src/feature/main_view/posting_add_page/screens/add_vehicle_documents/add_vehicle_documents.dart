import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../design_system/design_system.dart';
import 'components/add_documents_view.dart';
import 'components/primary_button_.dart';


class AddVehicleDocumentsPage extends StatefulWidget {
  const AddVehicleDocumentsPage({super.key});

  @override
  State<AddVehicleDocumentsPage> createState() => _AddVehicleDocumentsPageState();
}

class _AddVehicleDocumentsPageState extends State<AddVehicleDocumentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar:  MyAppBar(title: 'Add vehicle documents'),
      body: Stack(
        children: [
          Column(
            children: [
              const VehicleDocumentView(),
              125.verticalSpace,
              Positioned(
                bottom: 0,
                top: MediaQuery.of(context).size.height - 200,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 15.0.r, // changes position of shadow
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 135.h,
                  child: ColoredBox(
                    color: AppColor.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top:16.0,bottom:36,left:16,right: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PrimaryButton_(
                                maxWidth: 379,
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppSvg.asset(AppIcon.eye),
                                    10.horizontalSpace,
                                    Text('Preview the ad'.tr()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          10.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PrimaryButton(
                                onPressed: () {},
                                child: Text('Post the ad'.tr()),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}