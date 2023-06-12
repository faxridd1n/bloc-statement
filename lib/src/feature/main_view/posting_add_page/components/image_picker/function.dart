import 'dart:io';

import 'package:image_picker/image_picker.dart';
//nb=
final ImagePicker _picker= ImagePicker();
List<XFile>? selectedImages=[];
  void imgFromGallery() async {
    List<XFile>? image =
    await _picker.pickMultiImage();
   if(image.isNotEmpty){
    selectedImages!.addAll(image);
   }
  }

  void imgFromCamera() async {
    XFile? image =
    await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
  }

  void updateImage(File? newImage){
  }
 