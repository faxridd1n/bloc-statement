import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../design_system/design_system.dart';
import '../../../../../design_system/widgets/custom_drop_down.dart';
import '../../components/text_button_view.dart';
import '../../components/text_from_fields_view.dart';
import '../add_vehicle_documents/add_vehicle_documents.dart';

class AddVehicleFeaturesPage extends StatefulWidget {
  const AddVehicleFeaturesPage({super.key});

  @override
  State<AddVehicleFeaturesPage> createState() => _AddVehicleFeaturesPageState();
}

class _AddVehicleFeaturesPageState extends State<AddVehicleFeaturesPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController speedController = TextEditingController();
  TextEditingController engineController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Add vehicle features'),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const TextButtonView(),
                Padding(
                  padding: REdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: const CustomDropDown(
                      title: 'Fuel type',
                      label: 'Select fuel type',
                      items: [
                        'Gas',
                        'Diesel',
                        'Petrol',
                      ]),
                ),
                Padding(
                  padding: REdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: const CustomDropDown(
                      title: 'Color',
                      label: 'Select color',
                      items: [
                        'White',
                        'Black',
                        'Green',
                        'Red',
                      ]),
                ),
                Padding(
                  padding: REdgeInsets.only(
                    left: 16,
                    bottom: 16,
                    right: 16,
                  ),
                  child: MyTextFormFields(
                    controller: titleController,
                    hintText: 'Title',
                    title: 'Title',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    bottom: 16,
                    right: 16,
                  ),
                  child: MyTextFormFields(
                    controller: speedController,
                    hintText: 'Max speed',
                    title: 'Max speed',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    bottom: 16,
                    right: 16,
                  ),
                  child: MyTextFormFields(
                    controller: engineController,
                    hintText: 'Engine size',
                    title: 'Engine size',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
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
              height: 90.h,
              child: ColoredBox(
                color: AppColor.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 36, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const AddVehicleDocumentsPage();
                              },
                            ),
                          );
                        },
                        child: Text('Add vehicle documents'.tr()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
