import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import './HomePageCS1.dart';
import 'dart:ui' as ui;

class HomePage2 extends StatelessWidget {
  HomePage2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(12.0, 257.0),
            child:
                // Adobe XD layer: 'Line' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'Line / Big' (shape)
                Container(
                  width: 351.0,
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: const Color(0xffd5d5d5),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(9.0, 104.0),
            child:
                // Adobe XD layer: 'Stories' (text)
                Text(
              'Campus Events ',
              style: TextStyle(
                fontFamily: 'Rift Soft',
                fontSize: 14,
                color: const Color(0xff1d1d1d),
                letterSpacing: 1.0000000305175782,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(11.0, 131.0),
            child:
                // Adobe XD layer: 'Screen Shot 2020-05…' (shape)
                Container(
              width: 199.0,
              height: 75.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
                border: Border.all(width: 1.0, color: const Color(0xffffffff)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x89434343),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(225.0, 133.0),
            child:
                // Adobe XD layer: 'Screen Shot 2020-06…' (shape)
                Container(
              width: 223.0,
              height: 71.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xcc7e7e7e),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-3.0, -56.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(70.0, 283.0),
                      child: SizedBox(
                        width: 24.0,
                        child: Text(
                          'Today',
                          style: TextStyle(
                            fontFamily: 'Rift Soft',
                            fontSize: 10,
                            color: const Color(0xff333333),
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(109.0, 283.0),
                      child: SizedBox(
                        width: 62.0,
                        child: Text(
                          '4:00pm - 8:00pm',
                          style: TextStyle(
                            fontFamily: 'Rift Soft',
                            fontSize: 10,
                            color: const Color(0xff2e2e2e),
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(46.0, 270.0),
                      child: SizedBox(
                        width: 140.0,
                        child: Text(
                          'Paul Robenson Cultural Center',
                          style: TextStyle(
                            fontFamily: 'Rift Soft',
                            fontSize: 11,
                            color: const Color(0xff383838),
                            letterSpacing: -0.22,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(100.0, 283.0),
                      child: SizedBox(
                        width: 6.0,
                        child: Text(
                          '|',
                          style: TextStyle(
                            fontFamily: 'Rift Soft',
                            fontSize: 11,
                            color: const Color(0xff383838),
                            letterSpacing: -0.22,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(-3.0, -52.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(312.0, 260.0),
                  child: SizedBox(
                    width: 80.0,
                    child: Text(
                      'WEstgate Buidling',
                      style: TextStyle(
                        fontFamily: 'Rift Soft',
                        fontSize: 11,
                        color: const Color(0xff383838),
                        letterSpacing: -0.22,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(417.01, 189.38),
                  child: Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(-114.01, 83.62),
                        child: SizedBox(
                          width: 42.0,
                          child: Text(
                            'March 5th',
                            style: TextStyle(
                              fontFamily: 'Rift Soft',
                              fontSize: 10,
                              color: const Color(0xff333333),
                              letterSpacing: -0.2,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-66.01, 83.62),
                        child: SizedBox(
                          width: 62.0,
                          child: Text(
                            '4:00pm - 8:00pm',
                            style: TextStyle(
                              fontFamily: 'Rift Soft',
                              fontSize: 10,
                              color: const Color(0xff2e2e2e),
                              letterSpacing: -0.2,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(346.0, 273.0),
                  child: SizedBox(
                    width: 6.0,
                    child: Text(
                      '|',
                      style: TextStyle(
                        fontFamily: 'Rift Soft',
                        fontSize: 11,
                        color: const Color(0xff383838),
                        letterSpacing: -0.22,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(99.0, 35.0),
            child: SizedBox(
              width: 72.0,
              child: Text(
                'Culture & Social ',
                style: TextStyle(
                  fontFamily: 'Rift Soft',
                  fontSize: 10,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(9.2, 6.81),
            child:
                // Adobe XD layer: 'Status Bar' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(323.47, 3.43),
                  child:
                      // Adobe XD layer: 'Battery' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Border' (shape)
                      Container(
                        width: 22.0,
                        height: 11.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.67),
                          color: const Color(0x59464646),
                          border: Border.all(
                              width: 1.0, color: const Color(0x59000000)),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(23.0, 3.67),
                        child:
                            // Adobe XD layer: 'Cap' (shape)
                            SvgPicture.string(
                          _svg_hcz3ut,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(2.0, 2.0),
                        child:
                            // Adobe XD layer: 'Capacity' (shape)
                            Container(
                          width: 18.0,
                          height: 7.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.33),
                            color: const Color(0xff464646),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(278.45, 3.33),
                  child:
                      // Adobe XD layer: 'Wifi' (shape)
                      SvgPicture.string(
                    _svg_psvzpk,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(-0.16, 0.19),
                  child:
                      // Adobe XD layer: 'Time Style' (group)
                      Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(-0.04, 0.0),
                        child:
                            // Adobe XD layer: 'Time' (text)
                            SizedBox(
                          width: 54.0,
                          height: 18.0,
                          child: SingleChildScrollView(
                              child: Text(
                            '9:41',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 15,
                              color: const Color(0xff464646),
                              letterSpacing: -0.3,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(14.0, 275.0),
            child:
                // Adobe XD layer: 'Stories' (text)
                Text(
              'Latest Post',
              style: TextStyle(
                fontFamily: 'Rift Soft',
                fontSize: 15,
                color: const Color(0xff414141),
                letterSpacing: 1.0714286041259766,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(12.0, 312.0),
            child:
                // Adobe XD layer: 'Screen Shot 2020-02…' (shape)
                Container(
              width: 60.0,
              height: 53.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
                border: Border.all(width: 2.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(14.0, 319.0),
            child:
                // Adobe XD layer: 'Info' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(62.0, 7.0),
                  child:
                      // Adobe XD layer: 'Text' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Quiche Hollandaise' (text)
                      Text(
                        'Kaylah Urie',
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 12,
                          color: const Color(0xff1a1a1a),
                          letterSpacing: 0.8571428833007813,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Transform.translate(
                        offset: Offset(0.0, 20.0),
                        child:
                            // Adobe XD layer: 'San Francisco' (text)
                            Text(
                          '2 hours ago',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 12,
                            color: const Color(0xff1a1a1a),
                            letterSpacing: 1.000000030517578,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(327.0, 13.0),
                  child:
                      // Adobe XD layer: 'more-horizontal icon' (group)
                      Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(8.0, 0.0),
                        child:
                            // Adobe XD layer: 'Oval' (shape)
                            Container(
                          width: 4.0,
                          height: 4.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(2.0, 2.0)),
                            border: Border.all(
                                width: 2.0, color: const Color(0x9f8e8e8e)),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(16.0, 0.0),
                        child:
                            // Adobe XD layer: 'Oval' (shape)
                            Container(
                          width: 4.0,
                          height: 4.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(2.0, 2.0)),
                            border: Border.all(
                                width: 2.0, color: const Color(0x9f8e8e8e)),
                          ),
                        ),
                      ),
                      // Adobe XD layer: 'Oval' (shape)
                      Container(
                        width: 4.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(2.0, 2.0)),
                          border: Border.all(
                              width: 2.0, color: const Color(0x9f8e8e8e)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(33.0, 384.0),
            child:
                // Adobe XD layer: 'Etiam ut tempus dui.' (text)
                SizedBox(
              width: 317.0,
              height: 65.0,
              child: SingleChildScrollView(
                  child: Text(
                'Due to the weather, NetBlue will be rescheduled for Wednesday, February 20th at 6:00 p.m. Sorry for the inconvenience!  ',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 14,
                  color: const Color(0xff1a1a1a),
                  letterSpacing: 1.0000000305175782,
                  height: 1.7142857142857142,
                ),
                textAlign: TextAlign.left,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(32.93, 489.0),
            child:
                // Adobe XD layer: 'Icons' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0.0, 1.0),
                  child:
                      // Adobe XD layer: 'Likes' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Icon' (shape)
                      SvgPicture.string(
                        _svg_tevz8c,
                        allowDrawingOutsideViewBox: true,
                      ),
                      Transform.translate(
                        offset: Offset(23.07, -3.0),
                        child:
                            // Adobe XD layer: '36' (text)
                            Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 12,
                              color: const Color(0xff000000),
                              letterSpacing: 1.000000030517578,
                            ),
                            children: [
                              TextSpan(
                                text: '3',
                              ),
                              TextSpan(
                                text: '6',
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.49, 0.0),
                  child:
                      // Adobe XD layer: 'Comments' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Icon' (shape)
                      SvgPicture.string(
                        _svg_e5ugop,
                        allowDrawingOutsideViewBox: true,
                      ),
                      Transform.translate(
                        offset: Offset(20.58, -2.0),
                        child:
                            // Adobe XD layer: '6' (text)
                            Text(
                          '6',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 12,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(287.97, -0.18),
                  child:
                      // Adobe XD layer: 'Icon' (shape)
                      SvgPicture.string(
                    _svg_pdgk9n,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
          Transform(
            transform: Matrix4(1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0,
                1.0, 0.0, 41.9, 536.0, 0.0, 1.0),
            child:
                // Adobe XD layer: 'Line' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0.1, 0.0),
                  child:
                      // Adobe XD layer: 'Line / Big' (shape)
                      Container(
                    width: 273.0,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: const Color(0xffd9d9d9),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(4.0, -24.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(7.0, 841.0),
                  child:
                      // Adobe XD layer: 'qtpoc' (shape)
                      Container(
                    width: 61.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29.0),
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                          width: 2.0, color: const Color(0xff050505)),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(13.0, 853.0),
                  child:
                      // Adobe XD layer: 'Info' (group)
                      Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(62.0, 7.0),
                        child:
                            // Adobe XD layer: 'Text' (group)
                            Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(0.0, -2.0),
                              child:
                                  // Adobe XD layer: 'Quiche Hollandaise' (text)
                                  Text(
                                'Celeste Good',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 14,
                                  color: const Color(0xff1a1a1a),
                                  letterSpacing: 1.0000000305175782,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(0.0, 20.0),
                              child:
                                  // Adobe XD layer: 'San Francisco' (text)
                                  Text(
                                '2:00 p.m.',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 12,
                                  color: const Color(0xff1a1a1a),
                                  letterSpacing: 1.000000030517578,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(327.0, 13.0),
                        child:
                            // Adobe XD layer: 'more-horizontal icon' (group)
                            Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(8.0, 0.0),
                              child:
                                  // Adobe XD layer: 'Oval' (shape)
                                  Container(
                                width: 4.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(2.0, 2.0)),
                                  border: Border.all(
                                      width: 2.0,
                                      color: const Color(0x9f8e8e8e)),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(16.0, 0.0),
                              child:
                                  // Adobe XD layer: 'Oval' (shape)
                                  Container(
                                width: 4.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(2.0, 2.0)),
                                  border: Border.all(
                                      width: 2.0,
                                      color: const Color(0x9f8e8e8e)),
                                ),
                              ),
                            ),
                            // Adobe XD layer: 'Oval' (shape)
                            Container(
                              width: 4.0,
                              height: 4.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(2.0, 2.0)),
                                border: Border.all(
                                    width: 2.0, color: const Color(0x9f8e8e8e)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(37.0, 1005.0),
                  child:
                      // Adobe XD layer: 'Etiam ut tempus dui.' (text)
                      SizedBox(
                    width: 309.0,
                    height: 135.0,
                    child: SingleChildScrollView(
                        child: Text(
                      'QTPOC will be going out this weekend to Temple to speak with their organization LGBTQ Safe House to speak on pressing issues in both our communities. Please message me, or any of the e-board members, for more details!  ',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 14,
                        color: const Color(0xff1a1a1a),
                        letterSpacing: 1.0000000305175782,
                        height: 1.7142857142857142,
                      ),
                      textAlign: TextAlign.left,
                    )),
                  ),
                ),
                Transform.translate(
                  offset: Offset(57.0, 888.0),
                  child:
                      // Adobe XD layer: 'LGBTQ_Symbols' (shape)
                      Container(
                    width: 253.0,
                    height: 127.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(35.0, 648.0),
                      child:
                          // Adobe XD layer: 'Etiam ut tempus dui.' (text)
                          SizedBox(
                        width: 309.0,
                        height: 100.0,
                        child: SingleChildScrollView(
                            child: Text(
                          'NABA will be collaborating with WIRED IN to talk about financial literacy with Bank of America! Come out tomorrow to Heritage Hall at 5:30 p.m. for refreshments and useful tips',
                          style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 14,
                            color: const Color(0xff1a1a1a),
                            letterSpacing: 1.0000000305175782,
                            height: 1.7142857142857142,
                          ),
                          textAlign: TextAlign.left,
                        )),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(11.0, 581.44),
                      child:
                          // Adobe XD layer: 'Profile Large' (group)
                          Stack(
                        children: <Widget>[
                          Transform.translate(
                            offset: Offset(0.0, -0.44),
                            child: Container(
                              width: 57.0,
                              height: 57.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(28.5, 28.5)),
                                color: const Color(0xffa8a8a8),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(21.08, 20.42),
                            child: Stack(
                              children: <Widget>[
                                Transform.translate(
                                  offset: Offset(-0.08, 0.14),
                                  child: SvgPicture.string(
                                    _svg_xotz72,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(13.0, 586.0),
                      child:
                          // Adobe XD layer: 'Info' (group)
                          Stack(
                        children: <Widget>[
                          Transform.translate(
                            offset: Offset(62.0, 7.0),
                            child:
                                // Adobe XD layer: 'Text' (group)
                                Stack(
                              children: <Widget>[
                                Transform.translate(
                                  offset: Offset(0.0, -2.0),
                                  child:
                                      // Adobe XD layer: 'Quiche Hollandaise' (text)
                                      Text(
                                    'Daniel Gizaza ',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 14,
                                      color: const Color(0xff1a1a1a),
                                      letterSpacing: 1.0000000305175782,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(0.0, 20.0),
                                  child:
                                      // Adobe XD layer: 'San Francisco' (text)
                                      Text(
                                    '11:00 a.m.',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 12,
                                      color: const Color(0xff1a1a1a),
                                      letterSpacing: 1.000000030517578,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(327.0, 13.0),
                            child:
                                // Adobe XD layer: 'more-horizontal icon' (group)
                                Stack(
                              children: <Widget>[
                                Transform.translate(
                                  offset: Offset(8.0, 0.0),
                                  child:
                                      // Adobe XD layer: 'Oval' (shape)
                                      Container(
                                    width: 4.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(2.0, 2.0)),
                                      border: Border.all(
                                          width: 2.0,
                                          color: const Color(0x9f8e8e8e)),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(16.0, 0.0),
                                  child:
                                      // Adobe XD layer: 'Oval' (shape)
                                      Container(
                                    width: 4.0,
                                    height: 4.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(2.0, 2.0)),
                                      border: Border.all(
                                          width: 2.0,
                                          color: const Color(0x9f8e8e8e)),
                                    ),
                                  ),
                                ),
                                // Adobe XD layer: 'Oval' (shape)
                                Container(
                                  width: 4.0,
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(2.0, 2.0)),
                                    border: Border.all(
                                        width: 2.0,
                                        color: const Color(0x9f8e8e8e)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(34.93, 772.0),
                      child:
                          // Adobe XD layer: 'Icons' (group)
                          Stack(
                        children: <Widget>[
                          Transform.translate(
                            offset: Offset(0.0, 1.0),
                            child:
                                // Adobe XD layer: 'Likes' (group)
                                Stack(
                              children: <Widget>[
                                // Adobe XD layer: 'Icon' (shape)
                                SvgPicture.string(
                                  _svg_tevz8c,
                                  allowDrawingOutsideViewBox: true,
                                ),
                                Transform.translate(
                                  offset: Offset(23.07, -3.0),
                                  child:
                                      // Adobe XD layer: '36' (text)
                                      Text.rich(
                                    TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 12,
                                        color: const Color(0xff000000),
                                        letterSpacing: 1.000000030517578,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '3',
                                        ),
                                        TextSpan(
                                          text: '6',
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(62.49, 0.0),
                            child:
                                // Adobe XD layer: 'Comments' (group)
                                Stack(
                              children: <Widget>[
                                // Adobe XD layer: 'Icon' (shape)
                                SvgPicture.string(
                                  _svg_e5ugop,
                                  allowDrawingOutsideViewBox: true,
                                ),
                                Transform.translate(
                                  offset: Offset(20.58, -2.0),
                                  child:
                                      // Adobe XD layer: '6' (text)
                                      Text(
                                    '6',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 12,
                                      color: const Color(0xff000000),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(287.97, -0.18),
                            child:
                                // Adobe XD layer: 'Icon' (shape)
                                SvgPicture.string(
                              _svg_pdgk9n,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: Offset(32.93, 1174.0),
                  child:
                      // Adobe XD layer: 'Icons' (group)
                      Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(0.0, 1.0),
                        child:
                            // Adobe XD layer: 'Likes' (group)
                            Stack(
                          children: <Widget>[
                            // Adobe XD layer: 'Icon' (shape)
                            SvgPicture.string(
                              _svg_tevz8c,
                              allowDrawingOutsideViewBox: true,
                            ),
                            Transform.translate(
                              offset: Offset(23.07, -3.0),
                              child:
                                  // Adobe XD layer: '36' (text)
                                  Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 12,
                                    color: const Color(0xff000000),
                                    letterSpacing: 1.000000030517578,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '3',
                                    ),
                                    TextSpan(
                                      text: '6',
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(62.49, 0.0),
                        child:
                            // Adobe XD layer: 'Comments' (group)
                            Stack(
                          children: <Widget>[
                            // Adobe XD layer: 'Icon' (shape)
                            SvgPicture.string(
                              _svg_e5ugop,
                              allowDrawingOutsideViewBox: true,
                            ),
                            Transform.translate(
                              offset: Offset(20.58, -2.0),
                              child:
                                  // Adobe XD layer: '6' (text)
                                  Text(
                                '6',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 12,
                                  color: const Color(0xff000000),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(287.97, -0.18),
                        child:
                            // Adobe XD layer: 'Icon' (shape)
                            SvgPicture.string(
                          _svg_pdgk9n,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform(
            transform: Matrix4(-1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0,
                0.0, 1.0, 0.0, 589.0, 144.0, 0.0, 1.0),
            child: Stack(
              children: <Widget>[
                Transform(
                  transform: Matrix4(-1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0,
                      0.0, 0.0, 1.0, 0.0, 356.0, 65.0, 0.0, 1.0),
                  child:
                      // Adobe XD layer: 'Line' (shape)
                      Container(
                    width: 141.0,
                    height: 19.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                      color: const Color(0xffbcffcb),
                    ),
                  ),
                ),
                Transform(
                  transform: Matrix4(
                      0.681998,
                      -0.731354,
                      0.0,
                      0.0,
                      0.731354,
                      0.681998,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      1.0,
                      0.0,
                      227.66,
                      57.93,
                      0.0,
                      1.0),
                  child: Container(
                    width: 9.0,
                    height: 9.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.0, color: const Color(0xff00ac00)),
                    ),
                  ),
                ),
                Transform(
                  transform: Matrix4(
                      0.731354,
                      -0.681998,
                      0.0,
                      0.0,
                      0.681998,
                      0.731354,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      1.0,
                      0.0,
                      244.03,
                      57.53,
                      0.0,
                      1.0),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.0, color: const Color(0xff00ac00)),
                    ),
                  ),
                ),
                Transform(
                  transform: Matrix4(
                      0.681998,
                      -0.731354,
                      0.0,
                      0.0,
                      0.731354,
                      0.681998,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      1.0,
                      0.0,
                      257.72,
                      56.96,
                      0.0,
                      1.0),
                  child: Container(
                    width: 9.0,
                    height: 9.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.0, color: const Color(0xff00ac00)),
                    ),
                  ),
                ),
                Transform(
                  transform: Matrix4(
                      0.75471,
                      -0.656059,
                      0.0,
                      0.0,
                      0.656059,
                      0.75471,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      1.0,
                      0.0,
                      275.56,
                      56.15,
                      0.0,
                      1.0),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.0, color: const Color(0xff00ac00)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform(
            transform: Matrix4(1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0,
                1.0, 0.0, 38.9, 793.0, 0.0, 1.0),
            child:
                // Adobe XD layer: 'Line' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0.1, 0.0),
                  child:
                      // Adobe XD layer: 'Line / Big' (shape)
                      Container(
                    width: 273.0,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: const Color(0xffd9d9d9),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform(
            transform: Matrix4(-1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0,
                0.0, 1.0, 0.0, 514.19, 145.97, 0.0, 1.0),
            child: Stack(
              children: <Widget>[
                Transform(
                  transform: Matrix4(-1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0,
                      0.0, 0.0, 1.0, 0.0, 294.19, 67.0, 0.0, 1.0),
                  child:
                      // Adobe XD layer: 'Line' (shape)
                      Container(
                    width: 75.2,
                    height: 19.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                      color: const Color(0xfff0bcff),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(226.59, 54.19),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(2.5, 2.5)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffd139ff)),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(236.18, 50.19),
                  child: Container(
                    width: 9.0,
                    height: 9.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(4.5, 4.5)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffd139ff)),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(247.1, 60.23),
                  child: Container(
                    width: 3.0,
                    height: 3.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(1.5, 1.5)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffd139ff)),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(263.65, 57.14),
                  child: Container(
                    width: 9.0,
                    height: 9.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(4.5, 4.5)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffd139ff)),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(271.17, 51.19),
                  child: Container(
                    width: 3.0,
                    height: 3.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(1.5, 1.5)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffd139ff)),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(253.84, 51.19),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(2.5, 2.5)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffd139ff)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform(
            transform: Matrix4(-1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0,
                0.0, 1.0, 0.0, 389.0, 145.0, 0.0, 1.0),
            child: Stack(
              children: <Widget>[
                Transform(
                  transform: Matrix4(-1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0,
                      0.0, 0.0, 1.0, 0.0, 239.0, 68.0, 0.0, 1.0),
                  child:
                      // Adobe XD layer: 'Line' (shape)
                      Container(
                    width: 86.0,
                    height: 19.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                      color: const Color(0xfffff0dc),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(169.0, 49.0),
                  child: SvgPicture.string(
                    _svg_2h34h6,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
          Transform(
            transform: Matrix4(-1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0,
                0.0, 1.0, 0.0, 245.0, 142.5, 0.0, 1.0),
            child: Stack(
              children: <Widget>[
                Transform(
                  transform: Matrix4(-1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0,
                      0.0, 0.0, 1.0, 0.0, 169.0, 66.0, 0.0, 1.0),
                  child:
                      // Adobe XD layer: 'Line' (shape)
                      Container(
                    width: 89.0,
                    height: 19.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                      color: const Color(0xffffb2b2),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-1.0, -2.0),
                  child: Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(96.5, 48.5),
                        child: SvgPicture.string(
                          _svg_lidkhn,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform(
            transform: Matrix4(1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0,
                1.0, 0.0, 0.0, 77.0, 0.0, 1.0),
            child:
                // Adobe XD layer: 'Line' (shape)
                Container(
              width: 89.0,
              height: 22.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0),
                ),
                color: const Color(0xff000000),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, -3.0),
            child: Stack(
              children: <Widget>[
                Transform(
                  transform: Matrix4(-1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0,
                      0.0, 0.0, 1.0, 0.0, 375.0, 84.0, 0.0, 1.0),
                  child:
                      // Adobe XD layer: 'Base' (shape)
                      Container(
                    width: 375.0,
                    height: 49.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(28.13, 58.3),
                  child: Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(0.0, 2.24),
                        child:
                            // Adobe XD layer: 'Icon / Menu' (group)
                            Stack(
                          children: <Widget>[
                            // Adobe XD layer: 'Icon / Menu' (group)
                            Stack(
                              children: <Widget>[
                                // Adobe XD layer: 'Shape' (shape)
                                SvgPicture.string(
                                  _svg_carr6a,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(311.87, 0.0),
                        child:
                            // Adobe XD layer: 'Messages' (shape)
                            SvgPicture.string(
                          _svg_b8o45s,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(163.0, 50.0),
                  child:
                      // Adobe XD layer: 'Home' (text)
                      SizedBox(
                    width: 62.0,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Rift Soft',
                          fontSize: 24,
                          color: const Color(0xffffffff),
                          letterSpacing: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text: 'Hom',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'e',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(-3.0, 2.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0.0, 750.0),
                  child:
                      // Adobe XD layer: 'Base' (shape)
                      ClipRect(
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Container(
                        width: 375.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-4.0, 1.0),
                  child: Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(107.19, 721.38),
                        child: Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(216.08, 60.62),
                              child:
                                  // Adobe XD layer: 'Shape' (shape)
                                  SvgPicture.string(
                                _svg_4ncvun,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(222.81, 47.62),
                              child:
                                  // Adobe XD layer: 'Oval' (shape)
                                  Container(
                                width: 8.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(4.0, 4.0)),
                                  border: Border.all(
                                      width: 2.0,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(83.37, 722.3),
                        child: Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(177.0, 47.5),
                              child:
                                  // Adobe XD layer: 'Path' (shape)
                                  SvgPicture.string(
                                _svg_s35ftb,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(189.24, 766.63),
                        child:
                            // Adobe XD layer: 'calendar-book-date-…' (group)
                            Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_930owp,
                              allowDrawingOutsideViewBox: true,
                            ),
                            Transform.translate(
                              offset: Offset(20.76, 9.37),
                              child: Container(
                                width: 3.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(20.76, 16.37),
                              child: Container(
                                width: 3.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(13.76, 16.37),
                              child: Container(
                                width: 3.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(5.76, 16.37),
                              child: Container(
                                width: 3.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(13.76, 9.37),
                              child: Container(
                                width: 3.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(5.76, 9.37),
                              child: Container(
                                width: 3.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xffffffff)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(108.5, 769.0),
                        child:
                            // Adobe XD layer: 'Icon' (shape)
                            SvgPicture.string(
                          _svg_ogqgz0,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(190.0, -1382.0),
                        child: Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(-151.0, 2140.37),
                              child:
                                  // Adobe XD layer: 'Icon' (group)
                                  Stack(
                                children: <Widget>[
                                  // Adobe XD layer: 'Shape' (shape)
                                  SvgPicture.string(
                                    _svg_sb0c2a,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ],
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(-145.0, 2174.0),
                              child:
                                  // Adobe XD layer: 'Oval' (shape)
                                  Container(
                                width: 8.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(4.0, 4.0)),
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(76.0, 306.0),
            child:
                // Adobe XD layer: 'Quiche Hollandaise' (text)
                Text(
              'BluePrint',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 14,
                color: const Color(0xff1a1a1a),
                letterSpacing: 1.0000000305175782,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(78.0, 817.0),
            child:
                // Adobe XD layer: 'Quiche Hollandaise' (text)
                Text(
              'QTPOC',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 14,
                color: const Color(0xff1a1a1a),
                letterSpacing: 1.0000000305175782,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_hcz3ut =
    '<svg viewBox="23.0 3.7 1.3 4.0" ><path transform="translate(23.0, 3.67)" d="M 0 0 L 0 4 C 0.8047311305999756 3.661223411560059 1.328037977218628 2.873133182525635 1.328037977218628 2 C 1.328037977218628 1.126866698265076 0.8047311305999756 0.3387765288352966 0 0" fill="#464646" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_psvzpk =
    '<svg viewBox="278.5 3.3 40.0 11.2" ><path transform="translate(303.14, 3.33)" d="M 7.667118072509766 11.18876552581787 C 7.583868026733398 11.18876552581787 7.502848148345947 11.15439414978027 7.444818019866943 11.09447288513184 L 5.438717842102051 9.037430763244629 C 5.37655782699585 8.976044654846191 5.342437744140625 8.890285491943359 5.345118045806885 8.802158355712891 C 5.346918106079102 8.714303970336914 5.384637832641602 8.630213737487793 5.448617935180664 8.57146167755127 C 6.068027973175049 8.038815498352051 6.855897903442383 7.745491504669189 7.667118072509766 7.745491504669189 C 8.478347778320313 7.745491504669189 9.266218185424805 8.038825988769531 9.885618209838867 8.57146167755127 C 9.949607849121094 8.630213737487793 9.98731803894043 8.71429443359375 9.989117622375488 8.802158355712891 C 9.990918159484863 8.890581130981445 9.956467628479004 8.976339340209961 9.894618034362793 9.037430763244629 L 7.889418125152588 11.09447288513184 C 7.831387996673584 11.15439414978027 7.750368118286133 11.18876552581787 7.667118072509766 11.18876552581787 Z M 11.18971824645996 7.5791015625 C 11.10976791381836 7.5791015625 11.03336811065674 7.548219680786133 10.97461795806885 7.492132663726807 C 10.06604766845703 6.656805038452148 8.891417503356934 6.196755409240723 7.667118072509766 6.196755409240723 C 6.443657875061035 6.197670936584473 5.269988059997559 6.657710552215576 4.36231803894043 7.492132663726807 C 4.303567886352539 7.548209667205811 4.227168083190918 7.5791015625 4.147217750549316 7.5791015625 C 4.064228057861328 7.5791015625 3.986237764358521 7.546267032623291 3.927617788314819 7.486639976501465 L 2.768417596817017 6.29562520980835 C 2.706577777862549 6.232712745666504 2.673017740249634 6.149487018585205 2.673917770385742 6.061267375946045 C 2.674807786941528 5.972009658813477 2.709967613220215 5.88910961151123 2.772917747497559 5.827824592590332 C 4.106788158416748 4.566258430480957 5.845237731933594 3.871484756469727 7.668017864227295 3.871484756469727 C 9.490477561950684 3.871484756469727 11.229248046875 4.566258430480957 12.56401824951172 5.827824592590332 C 12.62696838378906 5.89002513885498 12.66212749481201 5.972925186157227 12.66301822662354 6.061267375946045 C 12.66391754150391 6.149487018585205 12.63035774230957 6.232712745666504 12.56851768493652 6.29562520980835 L 11.40931797027588 7.486639976501465 C 11.35068798065186 7.546267032623291 11.27270793914795 7.5791015625 11.18971824645996 7.5791015625 Z M 13.85911750793457 4.840042114257813 C 13.77818775177002 4.840042114257813 13.70179748535156 4.808184146881104 13.64401817321777 4.750327110290527 C 12.02446746826172 3.185326337814331 9.901827812194824 2.323440313339233 7.667118072509766 2.323440313339233 C 5.431828022003174 2.323440313339233 3.308867692947388 3.185326337814331 1.68931782245636 4.75033712387085 C 1.631547808647156 4.808173656463623 1.555147767066956 4.840042114257813 1.474217772483826 4.840042114257813 C 1.390907764434814 4.840042114257813 1.312917828559875 4.806882381439209 1.254617810249329 4.746665477752686 L 0.09361779689788818 3.556565999984741 C 0.03235779702663422 3.493338108062744 -0.0008822033414617181 3.410428047180176 1.779667218215764e-05 3.323123693466187 C 0.0009177966858260334 3.23509693145752 0.03511779755353928 3.152837514877319 0.09631779789924622 3.091511964797974 C 2.143527746200562 1.097912430763245 4.832218170166016 0 7.667118072509766 0 C 10.50233840942383 0 13.19070816040039 1.097922563552856 15.23701763153076 3.091511964797974 C 15.2982177734375 3.152837514877319 15.33241748809814 3.23509693145752 15.33331775665283 3.323123693466187 C 15.33421802520752 3.410428047180176 15.30097770690918 3.493338108062744 15.23971748352051 3.556565999984741 L 14.0787181854248 4.746665477752686 C 14.02041816711426 4.806882381439209 13.94242763519287 4.840042114257813 13.85911750793457 4.840042114257813 Z" fill="#464646" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(278.45, 3.67)" d="M 16.00020027160645 10.8557653427124 L 15.00029945373535 10.8557653427124 C 14.44894981384277 10.8557653427124 14.00039958953857 10.39926910400391 14.00039958953857 9.838151931762695 L 14.00039958953857 1.017613410949707 C 14.00039958953857 0.4564961791038513 14.44894981384277 0 15.00029945373535 0 L 16.00020027160645 0 C 16.55154991149902 0 17.00010108947754 0.4564961791038513 17.00010108947754 1.017613410949707 L 17.00010108947754 9.838151931762695 C 17.00010108947754 10.39926910400391 16.55154991149902 10.8557653427124 16.00020027160645 10.8557653427124 Z M 11.33369922637939 10.8557653427124 L 10.33290004730225 10.8557653427124 C 9.781549453735352 10.8557653427124 9.332999229431152 10.39926910400391 9.332999229431152 9.838151931762695 L 9.332999229431152 3.392655372619629 C 9.332999229431152 2.831538200378418 9.781549453735352 2.375041961669922 10.33290004730225 2.375041961669922 L 11.33369922637939 2.375041961669922 C 11.88504981994629 2.375041961669922 12.33360004425049 2.831538200378418 12.33360004425049 3.392655372619629 L 12.33360004425049 9.838151931762695 C 12.33360004425049 10.39926910400391 11.88504981994629 10.8557653427124 11.33369922637939 10.8557653427124 Z M 6.666300296783447 10.8557653427124 L 5.666399955749512 10.8557653427124 C 5.115049839019775 10.8557653427124 4.666500091552734 10.39926910400391 4.666500091552734 9.838151931762695 L 4.666500091552734 5.766781806945801 C 4.666500091552734 5.20566463470459 5.115049839019775 4.749167919158936 5.666399955749512 4.749167919158936 L 6.666300296783447 4.749167919158936 C 7.218140125274658 4.749167919158936 7.667099952697754 5.20566463470459 7.667099952697754 5.766781806945801 L 7.667099952697754 9.838151931762695 C 7.667099952697754 10.39926910400391 7.218140125274658 10.8557653427124 6.666300296783447 10.8557653427124 Z M 1.999799966812134 10.8557653427124 L 0.9998999834060669 10.8557653427124 C 0.4485500156879425 10.8557653427124 0 10.39926910400391 0 9.838151931762695 L 0 7.802924633026123 C 0 7.241308689117432 0.4485500156879425 6.784395217895508 0.9998999834060669 6.784395217895508 L 1.999799966812134 6.784395217895508 C 2.55115008354187 6.784395217895508 2.99970006942749 7.241308689117432 2.99970006942749 7.802924633026123 L 2.99970006942749 9.838151931762695 C 2.99970006942749 10.39926910400391 2.55115008354187 10.8557653427124 1.999799966812134 10.8557653427124 Z" fill="#464646" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tevz8c =
    '<svg viewBox="0.0 0.0 14.9 13.0" ><path  d="M 13.75543975830078 1.149294257164001 C 13.01992321014404 0.4134321212768555 12.02214050292969 -6.333057294152734e-16 10.98171901702881 0 C 9.941296577453613 3.166528647076367e-16 8.943513870239258 0.4134321212768555 8.20799732208252 1.149294257164001 L 7.452176094055176 1.905115485191345 L 6.69635534286499 1.149294257164001 C 5.16447114944458 -0.3825895488262177 2.68079686164856 -0.3825895488262177 1.148912906646729 1.149294376373291 C -0.3829709589481354 2.681178092956543 -0.3829709589481354 5.164852619171143 1.148912906646729 6.696736335754395 L 1.904734015464783 7.452557563781738 L 7.452176094055176 13 L 12.99961853027344 7.452557563781738 L 13.75543975830078 6.696736335754395 C 14.49130153656006 5.961219787597656 14.90473365783691 4.963437557220459 14.90473365783691 3.923015356063843 C 14.90473365783691 2.882593393325806 14.49130153656006 1.884811162948608 13.75543975830078 1.149294257164001 Z" fill="none" stroke="#ff0000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_e5ugop =
    '<svg viewBox="0.0 0.0 13.0 13.0" ><path  d="M 13 6.138909339904785 C 13.00248527526855 7.092147350311279 12.77977180480957 8.032492637634277 12.35000038146973 8.883354187011719 C 11.31069278717041 10.96286869049072 9.185877799987793 12.27689838409424 6.861111164093018 12.27779865264893 C 5.907873153686523 12.28028392791748 4.967527866363525 12.0575704574585 4.116666793823242 11.62779808044434 L 0 13.00002098083496 L 1.372222185134888 8.883354187011719 C 0.9424502849578857 8.032492637634277 0.7197368741035461 7.092147350311279 0.7222222089767456 6.138909339904785 C 0.7231218218803406 3.814142942428589 2.037152051925659 1.689327836036682 4.116666793823242 0.6500205993652344 C 4.967527866363525 0.2202486246824265 5.907873153686523 -0.002464774064719677 6.861111164093018 2.057474011962768e-05 L 7.222222328186035 2.057474011962768e-05 C 10.33919525146484 0.17198146879673 12.82803916931152 2.660824775695801 13 5.777798175811768 L 13 6.138909339904785 L 13 6.138909339904785 Z" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_pdgk9n =
    '<svg viewBox="288.0 -0.2 13.2 16.7" ><path transform="translate(287.97, -0.18)" d="M 13.17916393280029 16.698486328125 L 6.589581966400146 12.06001853942871 L 0 16.698486328125 L 0 1.855387330055237 C 0 0.8306851983070374 0.8429304361343384 0 1.882737755775452 0 L 11.29642772674561 0 C 12.33623504638672 0 13.17916393280029 0.8306851983070374 13.17916393280029 1.855387330055237 L 13.17916393280029 16.698486328125 Z" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_xotz72 =
    '<svg viewBox="-0.1 0.1 16.0 16.0" ><path transform="translate(-0.08, 0.14)" d="M 0 16 L 0 14.000244140625 C 0 11.79977416992188 3.599955081939697 9.999786376953125 8 9.999786376953125 C 12.40004539489746 9.999786376953125 16 11.79977416992188 16 14.000244140625 L 16 16 L 0 16 Z M 3.999550104141235 4.000457763671875 C 3.999550104141235 1.790985107421875 5.790527820587158 0 8 0 C 10.20857238769531 0 11.99954986572266 1.790985107421875 11.99954986572266 4.000457763671875 C 11.99954986572266 6.209014892578125 10.20857238769531 8.000030517578125 8 8.000030517578125 C 5.790527820587158 8.000030517578125 3.999550104141235 6.209014892578125 3.999550104141235 4.000457763671875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2h34h6 =
    '<svg viewBox="169.0 49.0 56.0 14.0" ><path transform="translate(169.0, 52.0)" d="M 6.999999523162842 0 L 14 11 L 0 11 Z" fill="none" stroke="#fcc854" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 195.0, 61.0)" d="M 6.499999523162842 0 L 13 12 L 0 12 Z" fill="none" stroke="#fcc854" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 225.0, 61.0)" d="M 6.499999523162842 0 L 13 12 L 0 12 Z" fill="none" stroke="#fcc854" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(197.0, 52.0)" d="M 6.999999523162842 0 L 14 11 L 0 11 Z" fill="none" stroke="#fcc854" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lidkhn =
    '<svg viewBox="96.5 48.5 58.0 19.0" ><path transform="translate(109.5, 48.5)" d="M 0 0 L 3.139057159423828 8.226676940917969 L 7.17498779296875 18.8038330078125" fill="none" stroke="#ff6262" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(121.5, 48.5)" d="M 0 0 L 7 18.3299560546875" fill="none" stroke="#ff6262" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(135.5, 48.5)" d="M 0 0 L 7 18.3299560546875" fill="none" stroke="#ff6262" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(96.5, 48.5)" d="M 0 0 L 6 19" fill="none" stroke="#ff6262" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(148.5, 48.5)" d="M 0 0 L 6 18.3299560546875" fill="none" stroke="#ff6262" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_carr6a =
    '<svg viewBox="0.0 0.0 19.4 13.5" ><path  d="M 0.8823529481887817 1.764705896377563 L 18.52941131591797 1.764705896377563 C 19.01672172546387 1.764705896377563 19.41176414489746 1.369663000106812 19.41176414489746 0.8823529481887817 C 19.41176414489746 0.3950428664684296 19.01672172546387 0 18.52941131591797 0 L 0.8823529481887817 0 C 0.3950428664684296 0 0 0.3950428664684296 0 0.8823529481887817 C 0 1.369663000106812 0.3950428664684296 1.764705896377563 0.8823529481887817 1.764705896377563 L 0.8823529481887817 1.764705896377563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(0.0, 5.88)" d="M 18.52941131591797 0 L 0.8823529481887817 0 C 0.3950428664684296 0 0 0.3950428664684296 0 0.8823529481887817 C 0 1.369663000106812 0.3950428664684296 1.764705896377563 0.8823529481887817 1.764705896377563 L 18.52941131591797 1.764705896377563 C 19.01672172546387 1.764705896377563 19.41176414489746 1.369663000106812 19.41176414489746 0.8823529481887817 C 19.41176414489746 0.3950428664684296 19.01672172546387 0 18.52941131591797 0 L 18.52941131591797 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(0.0, 11.76)" d="M 18.52941131591797 0 L 0.8823529481887817 0 C 0.3950428664684296 0 0 0.3950428664684296 0 0.8823529481887817 C 0 1.369663000106812 0.3950428664684296 1.764705896377563 0.8823529481887817 1.764705896377563 L 18.52941131591797 1.764705896377563 C 19.01672172546387 1.764705896377563 19.41176414489746 1.369663000106812 19.41176414489746 0.8823529481887817 C 19.41176414489746 0.3950428664684296 19.01672172546387 0 18.52941131591797 0 L 18.52941131591797 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_b8o45s =
    '<svg viewBox="311.9 0.0 20.0 18.0" ><path transform="translate(311.87, 0.0)" d="M 20 12 C 20 13.10456943511963 19.00507736206055 14 17.77777862548828 14 L 4.44444465637207 14 L 0 18 L 0 2 C 0 0.8954305052757263 0.9949227571487427 0 2.222222328186035 0 L 17.77777862548828 0 C 19.00507736206055 0 20 0.8954305052757263 20 2 L 20 12 Z" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_4ncvun =
    '<svg viewBox="216.1 60.6 21.5 6.0" ><path transform="translate(216.08, 60.62)" d="M 21.47274780273438 6 L 21.47274780273438 4 C 21.47274780273438 1.790861010551453 19.06932830810547 0 16.10456085205078 0 L 5.368186950683594 0 C 2.403419256210327 0 0 1.790861010551453 0 4 L 0 6" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_s35ftb =
    '<svg viewBox="177.0 47.5 23.3 21.2" ><path transform="translate(177.0, 47.5)" d="M 23.29725456237793 16.70010566711426 L 0 16.70010566711426 C 1.930007696151733 16.70010566711426 3.494588136672974 15.20472717285156 3.494588136672974 13.36008453369141 L 3.494588136672974 7.79338264465332 C 3.494588136672974 3.489216089248657 7.145276069641113 -4.944224486747549e-16 11.64862728118896 0 C 16.1519775390625 4.944224486747549e-16 19.80266571044922 3.489216089248657 19.80266761779785 7.79338264465332 L 19.80266761779785 13.36008453369141 C 19.80266761779785 15.20472717285156 21.36724853515625 16.70010566711426 23.29725456237793 16.70010566711426 L 23.29725456237793 16.70010566711426 Z" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(187.09, 67.8)" d="M 3.114091873168945 0 C 2.792064428329468 0.5551403164863586 2.198826789855957 0.8968371152877808 1.557045936584473 0.8968371152877808 C 0.9152652621269226 0.8968371152877808 0.3220275044441223 0.5551403164863586 0 0 L 3.114091873168945 0 Z" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_930owp =
    '<svg viewBox="0.0 0.0 26.4 23.4" ><path  d="M 23.10268974304199 0 L 19.80230522155762 0 L 19.80230522155762 1.460792541503906 L 6.60076904296875 1.460792541503906 L 6.60076904296875 0 L 3.300384521484375 0 L 3.300384521484375 1.460792541503906 L 0 1.460792541503906 L 0 5.843170166015625 L 0 7.303962707519531 L 0 21.91188812255859 L 0 23.3726806640625 L 1.650192260742188 23.3726806640625 L 26.403076171875 23.3726806640625 L 26.403076171875 21.91188812255859 L 26.403076171875 7.303962707519531 L 26.403076171875 5.843170166015625 L 26.403076171875 1.460792541503906 L 23.10268974304199 1.460792541503906 L 23.10268974304199 0 Z M 24.75288009643555 7.303962707519531 L 24.75288009643555 21.91188812255859 L 1.650192260742188 21.91188812255859 L 1.650192260742188 7.303962707519531 L 24.75288009643555 7.303962707519531 Z" fill="#ffffff" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sb0c2a =
    '<svg viewBox="0.0 0.0 20.4 22.6" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ff000000"  /><stop offset="1.0" stop-color="#ff808080"  /></linearGradient></defs><path  d="M 0 7.919191837310791 L 10.18181800842285 0 L 20.3636360168457 7.919191837310791 L 20.3636360168457 20.3636360168457 C 20.3636360168457 21.61324882507324 19.35062217712402 22.62626075744629 18.10100936889648 22.62626075744629 L 2.262626171112061 22.62626075744629 C 1.013012290000916 22.62626075744629 0 21.61324882507324 0 20.3636360168457 L 0 7.919191837310791 Z" fill="url(#gradient)" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ff000000"  /><stop offset="1.0" stop-color="#ff808080"  /></linearGradient></defs><path transform="translate(7.48, 13.63)" d="M 0 9 L 0 0 L 5.400000095367432 0 L 5.400000095367432 9" fill="url(#gradient)" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ogqgz0 =
    '<svg viewBox="108.5 769.0 21.0 20.8" ><path transform="translate(108.5, 769.0)" d="M 20.19231033325195 20.78698348999023 C 19.98713302612305 20.78698348999023 19.79123687744141 20.71456336975098 19.64069747924805 20.58305168151855 L 14.5659351348877 15.80969047546387 C 12.99995708465576 16.84531402587891 11.16258907318115 17.39266014099121 9.254233360290527 17.3927116394043 C 6.361205101013184 17.39279174804688 3.690025806427002 16.15839576721191 1.92564582824707 14.00605201721191 C -1.10350501537323 10.30961799621582 -0.5058360695838928 5.057433605194092 3.286306381225586 2.048946619033813 C 4.951772689819336 0.7276607751846313 7.067754745483398 3.652343821158865e-06 9.244462013244629 3.652343821158865e-06 C 11.8217248916626 3.652343821158865e-06 14.30090141296387 1.021525621414185 16.04628372192383 2.802634954452515 C 19.40764808654785 6.235263347625732 19.30139923095703 11.51659965515137 15.80438995361328 14.82610321044922 L 20.78340148925781 19.48332977294922 L 20.78340148925781 19.50823974609375 C 21.08080101013184 19.80937385559082 21.07212066650391 20.27356910705566 20.76324272155762 20.56408882141113 C 20.61105155944824 20.70782279968262 20.40829467773438 20.78698348999023 20.19231033325195 20.78698348999023 Z M 9.302192687988281 1.650771260261536 C 5.143048763275146 1.650771260261536 1.759342908859253 4.832985877990723 1.759342908859253 8.744450569152832 C 1.759342908859253 12.65657424926758 5.143048763275146 15.83931636810303 9.302192687988281 15.83931636810303 C 13.46133613586426 15.83931636810303 16.84504318237305 12.65657424926758 16.84504318237305 8.744450569152832 C 16.84504318237305 4.832985877990723 13.46133613586426 1.650771260261536 9.302192687988281 1.650771260261536 Z" fill="#ffffff" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
