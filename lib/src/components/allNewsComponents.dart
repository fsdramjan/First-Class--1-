import 'package:api_test/src/configs/appColors.dart';
import 'package:api_test/src/configs/appConfigs.dart';
import 'package:api_test/src/controllers/baseController.dart';
import 'package:api_test/src/pages/singleNewsPage.dart';
import 'package:api_test/src/widgets/kText.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AllNewsComponents extends StatelessWidget with BaseController {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: false,
        itemCount: newsDataC.article.length,
        itemBuilder: (BuildContext context, int index) {
          final item = newsDataC.article[index];

          return GestureDetector(
            onTap: () => Get.to(
              SingleNewsPage(
                news: item,
              ),
            ),
            child: Padding(
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
                          imageUrl: item.urlToImage.toString(),
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
                            text: item.title.toString(),
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
                                text: DateFormat('yy --mm--dd : mm')
                                    .format(item.publishedAt as DateTime),
                                fontSize: 12,
                                fontFamily: regular,
                                color: black,
                              ),
                            ],
                          ),
                          Divider(color: Colors.grey),
                          KText(
                            text: item.description.toString(),
                            fontSize: 12,
                            fontFamily: regular,
                            maxLine: 4,
                            color: black54,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
