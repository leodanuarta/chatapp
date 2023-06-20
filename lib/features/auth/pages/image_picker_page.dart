import 'dart:typed_data';

import 'package:chatapp/common/extension/custom_theme_extension.dart';
import 'package:chatapp/common/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';

class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({super.key});

  @override
  State<ImagePickerPage> createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  List<Widget> imageList = [];

  fetchAllImages() async {
    final permission = await PhotoManager.requestPermissionExtend();
    if (!permission.isAuth) return PhotoManager.openSetting();

    List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(
      type: RequestType.image,
      onlyAll: true,
    );

    List<AssetEntity> photos = await albums[0].getAssetListPaged(
      page: 0,
      size: 24,
    );

    List<Widget> temp = [];

    for (var asset in photos) {
      temp.add(
        FutureBuilder(
          // untuk menampilkan thumbnail foto
          future: asset.thumbnailDataWithSize(
            const ThumbnailSize(200, 200),
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: InkWell(
                  onTap: () => Navigator.pop(context, snapshot.data),
                  borderRadius: BorderRadius.circular(5),
                  splashFactory: NoSplash.splashFactory,
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.theme.greyColor!.withOpacity(0.4),
                        width: 1,
                      ),
                      image: DecorationImage(
                        image: MemoryImage(snapshot.data as Uint8List),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              );
            }
            return const SizedBox();
          },
        ),
      );
    }
    setState(() {
      imageList.addAll(temp);
    });
  }

  @override
  void initState() {
    fetchAllImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        // elevation: 0,
        leading: CustomIconButton(
          onTap: () => Navigator.pop(context),
          icon: Icons.arrow_back,
        ),
        title: Text(
          'ChatApp',
          style: TextStyle(color: context.theme.authAppbarTextColor),
        ),
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Icons.more_vert,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          itemCount: imageList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (_, index) {
            return imageList[index];
          },
        ),
      ),
    );
  }
}
