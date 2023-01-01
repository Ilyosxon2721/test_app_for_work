import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/center_menu_items.dart';
import '../data/outline_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'home_screen_app_bar_title'.tr,
          style: GoogleFonts.roboto(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        ),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        backgroundColor: Colors.transparent,
        actionsIconTheme: const IconThemeData(color: Colors.black, size: 30),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_on_rounded))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              child: Center(
                child: SizedBox(
                  height: 25,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: outlineButtonItems
                        .map((e) => Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5.0),
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: e['is_active']
                                      ? Colors.black
                                      : Colors.white,
                                  shape: const StadiumBorder(),
                                ),
                                child: Text(
                                  e['title'],
                                  style: GoogleFonts.roboto(
                                      color: e['is_active']
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.60,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: centerMenuItems
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: e['bg_color'],
                        ),
                        child: Center(
                          child: ListTile(
                            leading: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: e['color']),
                              child: const Icon(
                                Icons.qr_code,
                                color: Colors.black,
                              ),
                            ),
                            title: Text(
                              e['title'],
                              style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 35,
              ),
            ),
            Container(
              width: 126,
              height: 48,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 205, 193, 255),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.qr_code,
                  ),
                  Text(
                    "home_screen_app_bar_title".tr,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
