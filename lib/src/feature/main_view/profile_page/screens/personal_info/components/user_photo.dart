import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../../design_system/assets/app_icons.dart';
import '../../../../../../design_system/design_system.dart';


class UserPhoto extends StatefulWidget {
  const UserPhoto({Key? key}) : super(key: key);

  @override
  State<UserPhoto> createState() => _UserPhotoState();
}

class _UserPhotoState extends State<UserPhoto> {

  //final String? userImage = null;

  XFile? image;

  final ImagePicker picker = ImagePicker();
  bool isImage = false;

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }
 /* void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }*/

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.r,
      height: 120.r,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColor.cE2E2E2, width: 1),
      ),
      child: image == null ?
      IconButton(
        onPressed: (){
         // myAlert();
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: 150,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.camera_alt),
                      title: Text('Take a photo'),
                      onTap: () {
                         getImage(ImageSource.camera);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('Pick from gellery'),
                      onTap: () {
                         getImage(ImageSource.gallery);
                        Navigator.pop(context);
                      },)
                  ],
                ),
              )
          );
        },
        icon: AppSvg.asset(AppIcon.camera),
      ) :
      ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.file(
          File(image!.path),
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: 300,
        ),
      ),
    );
      /*Material(
      type: MaterialType.transparency,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {},
        child: Ink(
          width: 120.r,
          height: 120.r,
          padding: userImage != null ? null : REdgeInsets.all(35),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColor.cE2E2E2),
          ),
          child: userImage == null
              ? const Image(
            image: AssetImage(AppIcon.camera),
            fit: BoxFit.scaleDown,
          )
              : CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: userImage!,
          ),
        ),
      ),
    );*/
  }
}

