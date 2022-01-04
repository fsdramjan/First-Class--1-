import 'package:api_test/src/components/allNewsComponents.dart';
import 'package:api_test/src/components/catagoryComponets.dart';
import 'package:api_test/src/configs/appColors.dart';
import 'package:api_test/src/configs/appConfigs.dart';
import 'package:api_test/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            KText(
              text: 'Flutter With',
              fontFamily: medium,
            ),
            KText(
              text: ' Fsd',
              color: blue,
              fontFamily: medium,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: paddingH10,
          child: ListView(
            shrinkWrap: true,
            primary: false,
            children: [
              CatagoryComponents(),
              SizedBox(height: 20),
              AllNewsComponents(),
            ],
          ),
        ),
      ),
    );
  }
}
