// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:referral_page/card1style.dart';
import 'package:referral_page/card3style.dart';
import 'package:referral_page/card4style.dart';
import 'package:referral_page/social_media.dart';
import 'package:referral_page/elevated_cards.dart';
import 'package:referral_page/referral_code.dart';
import 'package:referral_page/small_card.dart';
import 'package:referral_page/under_line.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReferralPage(),
    );
  }
}

class ReferralPage extends StatefulWidget {
  @override
  State<ReferralPage> createState() => _ReferralPageState();
}

class _ReferralPageState extends State<ReferralPage> {
  final Widget cardIcon1 = Icon(Icons.monetization_on_outlined);
  final Widget cardIcon2 = Icon(Icons.euro);
  final Widget cardIcon3 = Icon(Icons.attach_money);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD2FFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Earn Reward',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 27,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              smallCard(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              elevCard(
                ht: 235,
                clr: Color(0xFFB8E9FF),
                cardContent: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        card1Header(),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: card1BodyStyle(
                              bodyText: 'Share the App',
                              card1Icon: 'icons/share.png',
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            flex: 2,
                            child: card1BodyStyle(
                              bodyText: 'Scratch the card',
                              card1Icon: 'icons/ticket.png',
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            flex: 2,
                            child: card1BodyStyle(
                              bodyText: 'You get rewarded',
                              card1Icon: 'icons/money-bag.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    underLine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        card1Footer(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              elevCard(
                ht: 240,
                clr: Colors.white,
                cardContent: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        referralCard(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          socialMedia(
                              appName: 'Whats App',
                              appIcon: 'icons/whatsapp.png'),
                          Spacer(),
                          socialMedia(
                              appName: 'Facebook',
                              appIcon: 'icons/facebook.png'),
                          Spacer(),
                          socialMedia(
                              appName: 'Instagram',
                              appIcon: 'icons/instagram.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              elevCard(
                ht: 140,
                clr: Colors.white,
                cardContent: Column(
                  children: [
                    card3Header(),
                    underLine(),
                    Spacer(),
                    card3Body(),
                    card3Button(),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              elevCard(
                ht: 145,
                clr: Color(0xFFFFFCCC),
                cardContent: Column(
                  children: [
                    card4Header(),
                    underLine(),
                    Spacer(),
                    card4Body(),
                    card4Button(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
