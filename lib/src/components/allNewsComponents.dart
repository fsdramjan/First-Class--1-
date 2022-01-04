import 'package:api_test/src/configs/appColors.dart';
import 'package:api_test/src/configs/appConfigs.dart';
import 'package:api_test/src/controllers/baseController.dart';
import 'package:api_test/src/widgets/kText.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllNewsComponents extends StatelessWidget with BaseController {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: catagoryC.catagoryData.length,
        itemBuilder: (BuildContext context, int index) {
          final item = catagoryC.catagoryData[index];

          return Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Container(
              height: 450,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blueGrey,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 250,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: item.img,
                        fit: BoxFit.fill,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress),
                        ),
                        errorWidget: (context, url, error) => Icon(
                          Icons.error,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        KText(
                          text:
                              '''Uber will test 'autonomous' food delivery sometime next year''',
                          maxLine: 2,
                          wordSpacing: 3,
                          fontSize: 16,
                          fontFamily: medium,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            KText(
                              text: 'PublishedAt : ',
                              fontSize: 12,
                              fontFamily: regular,
                              color: black54,
                            ),
                            SizedBox(width: 5),
                            KText(
                              text: '06:31 | 12-10-2022',
                              fontSize: 12,
                              fontFamily: regular,
                              color: black,
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        KText(
                          text:
                              'Uber and autonomous vehicle company Motional annoynced a partnership today for throgh Uber Eats. Uber and autonomous vehicle company Motional annoynced a partnership today for throgh Uber Eats.',
                          fontSize: 12,
                          fontFamily: regular,
                          color: black54,
                        ),

                        // RichText(
                        //   text: TextSpan(
                        //     children: [
                        //       TextSpan(
                        //         text: 'Hello ',
                        //         style: TextStyle(
                        //           color: blue,
                        //         ),
                        //       ),
                        //       TextSpan(
                        //         text: 'Hello ',
                        //         style: TextStyle(
                        //           color: black,
                        //         ),
                        //       ),
                        //       TextSpan(
                        //         text: 'Hello ',
                        //         style: TextStyle(
                        //           color: black,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
