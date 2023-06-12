import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:u_rent_demo/src/feature/main_view/posting_add_page/components/image_picker/function.dart';
import 'package:u_rent_demo/src/feature/main_view/posting_add_page/screens/add_vehicle_features/add_vehicle_features.dart';
import '../../../design_system/design_system.dart';
import '../../../design_system/widgets/custom_drop_down.dart';
import '../../../design_system/widgets/text_form_field.dart';
import 'components/description_view.dart';
import 'components/download_image_view.dart';
import 'components/text_from_fields_view.dart';
import 'components/select_image.dart';

class PostingAddPage extends StatefulWidget {
  const PostingAddPage({super.key});

  @override
  State<PostingAddPage> createState() => _PostingAddPageState();
}

class _PostingAddPageState extends State<PostingAddPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: MyAppBar(title: 'Posting an add'.tr(),),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                selectedImages!.isEmpty
                    ? DownloadImageView(() {
                        setState(() {});
                      })
                    : ImageGridView(() {
                        setState(() {});
                      }),
                20.verticalSpace,
                Padding(
                  padding: REdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: MyTextFormFild(
                    controller: titleController,
                    hintText: 'Title',
                  ),
                ),
                Padding(
                  padding: REdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: const CustomDropDown(
                      title: 'Vehicle type',
                      label: 'Select vehicle type',
                      items: [
                        'Minivan',
                        'Coupe',
                        'Sedan',
                        'Crossover',
                        'Luxury car',
                      ],
                      ),
                ),
                Padding(
                  padding: REdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: const CustomDropDown(
                      title: 'Vehicle brands',
                      label: 'Select vehicle brands',
                      items: [
                        'Chevrolet',
                        'Mercedes benz',
                        'BMW',
                        'BYD',
                      ]),
                ),
                Padding(
                  padding: REdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: const CustomDropDown(
                      title: 'Vehicle model',
                      label: 'Select vehicle model',
                      items: [
                        'ModelX',
                        'C-class',
                        'BYD-Xan',
                        'M-4',
                      ],
                      ),
                ),
                DescriptionView(
                  controller: descriptionController,
                  hintText: 'Description',
                  title: 'Description',
                ),
                Row(
                  children: [
                    Padding(
                      padding: REdgeInsets.only(left: 16, bottom: 16),
                      child: MyTextFormFields(
                        width: MediaQuery.of(context).size.width * 0.55,
                        controller: priceController,
                        hintText: 'Enter price',
                        title: 'Price',
                      ),
                    ),
                    9.horizontalSpace,
                    Padding(
                      padding: REdgeInsets.fromLTRB(0, 0, 16, 16),
                      child: CustomDropDown(
                          width: MediaQuery.of(context).size.width * 0.34,
                          label: 'Per day',
                          items: const [
                            'Monday',
                            'Tuesday',
                            'Wednesday',
                            'Thursday',
                          ]),
                    ),
                  ],
                ),
                10.verticalSpace,
                Positioned(
                  bottom: 0,
                  top: MediaQuery.of(context).size.height - 200,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 15.0.r,
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
                                      return const AddVehicleFeaturesPage();
                                    },
                                  ),
                                );
                              },
                              child: Text('Add vehicle features'.tr()),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
