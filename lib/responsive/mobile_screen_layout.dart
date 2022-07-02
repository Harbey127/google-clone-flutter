import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../style/colors.dart';
import '../widgets/mobile/mobile_footer.dart';
import '../widgets/translation_buttons.dart';
import '../widgets/web/sign_in_button.dart';
import '../widgets/web/web_search.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: blueColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: blueColor,
              tabs: [
                Tab(text: 'ALL'),
                Tab(text: 'IMAGES'),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                'assets/images/more-apps.svg',
                color: primaryColor,
              ),
              onPressed: () {}),
          const SizedBox(width: 10),
          const SignInButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.25),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Search(),
                        SizedBox(height: 130),
                      ],
                    ),
                    const MobileFooter(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}