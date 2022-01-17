import 'package:api_test/src/configs/appColors.dart';
import 'package:api_test/src/configs/appConfigs.dart';
import 'package:api_test/src/controllers/baseController.dart';
import 'package:api_test/src/models/article.dart';
import 'package:api_test/src/widgets/kText.dart';
import 'package:api_test/src/widgets/webview.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleNewsPage extends StatelessWidget with BaseController {
  final Article news;

  SingleNewsPage({
    required this.news,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(
          text: news.title.toString(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: news.urlToImage.toString(),
              fit: BoxFit.fill,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                child:
                    CircularProgressIndicator(value: downloadProgress.progress),
              ),
              errorWidget: (context, url, error) => Icon(
                Icons.error,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: paddingH10,
              child: Column(
                children: [
                  KText(
                    text: news.title.toString(),
                    fontSize: 16,
                    fontFamily: medium,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.person,
                          size: 50,
                        ),
                      ),
                      SizedBox(width: 10),
                      KText(
                        text: news.author.toString(),
                        fontFamily: medium,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Comment',
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Color(0xFFF5F5F5),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      KText(
                        text: 'PublishedAt : ',
                        color: black54,
                      ),
                      SizedBox(width: 10),
                      KText(
                        text: news.publishedAt.toString(),
                        fontFamily: medium,
                      ),
                    ],
                  ),
                  Divider(),
                  KText(
                    text: news.description.toString(),
                    fontFamily: medium,
                    fontSize: 12,
                    color: black54,
                  ),
                  Divider(),
                  KText(
                    text: news.content.toString(),
                    fontFamily: medium,
                    fontSize: 12,
                    color: black54,
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () => Get.to(
                      WebViewExample(
                        url: news.url.toString(),
                        title: news.title.toString(),
                      ),
                    ),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade200,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: KText(
                        text: 'Original Content',
                        fontSize: 16,
                        fontFamily: medium,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(
                        text: 'Recent News',
                        fontSize: 16,
                        fontFamily: medium,
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 300,
                    child: ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: newsDataC.article.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final item = newsDataC.article[index];

                          return GestureDetector(
                            onTap: () => Get.to(
                              SingleNewsPage(
                                news: item,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Container(
                                width: 300,
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
                                      height: 150,
                                      width: 300,
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
                                          progressIndicatorBuilder: (context,
                                                  url, downloadProgress) =>
                                              Center(
                                            child: CircularProgressIndicator(
                                                value:
                                                    downloadProgress.progress),
                                          ),
                                          errorWidget: (context, url, error) =>
                                              Icon(
                                            Icons.error,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                            maxLine: 2,
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
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 40)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
