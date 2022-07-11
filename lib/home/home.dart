import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart' as gg;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List _isHovering = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 38, 41, 1),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Image.asset(
                  "Rayoxeltoy.jpeg",
                  width: screenSize.height * 0.04,
                  height: screenSize.height * 0.04,
                ),
                SizedBox(
                  width: screenSize.width * 0.01,
                ),
                Text(
                  "Rayoxeltoys NFT",
                  style: gg.GoogleFonts.montserrat(
                      fontSize: screenSize.height * 0.02,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering[0] = value;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Home',
                                style: gg.GoogleFonts.montserrat(
                                    fontSize: screenSize.height * 0.015,
                                    fontWeight: FontWeight.w500,
                                    color: _isHovering[0]
                                        ? Colors.indigo.shade200
                                        : Colors.white)
                                // style: TextStyle(
                                //   color: _isHovering[0]
                                //       ? Colors.indigo.shade200
                                //       : Colors.white,
                                // ),
                                ),
                            SizedBox(
                              height: 5,
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[0],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.indigo.shade200,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 20),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering[1] = value;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Road Map',
                                style: gg.GoogleFonts.montserrat(
                                    fontSize: screenSize.height * 0.015,
                                    fontWeight: FontWeight.w500,
                                    color: _isHovering[1]
                                        ? Colors.indigo.shade200
                                        : Colors.white)),
                            SizedBox(
                              height: 5,
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[1],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.indigo.shade200,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      _isHovering[2] = value;
                    });
                  },
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Contact Us',
                          style: gg.GoogleFonts.montserrat(
                              fontSize: screenSize.height * 0.015,
                              fontWeight: FontWeight.w500,
                              color: _isHovering[2]
                                  ? Colors.indigo.shade200
                                  : Colors.white)),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[2],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Colors.indigo.shade200,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 50,
                ),
                // InkWell(
                //   onTap: () {},
                //   child: Text(
                //     'Login',
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: screenSize.width, height: screenSize.height * 0.6,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage("background.png"),
                          fit: BoxFit.cover)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 2.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.black.withOpacity(0.4)),
                    ),
                  ),
                  // image below the top bar
                ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.only(
                //           left: screenSize.width * 0.05,
                //           top: screenSize.height * 0.08),
                //       child: Text(
                //         'My NFT Collection',
                //         style: gg.GoogleFonts.montserrat(
                //           fontSize: screenSize.height * 0.03,
                //           fontWeight: FontWeight.w600,
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       child: Padding(
                //         padding: EdgeInsets.only(
                //             right: screenSize.width * 0.05,
                //             top: screenSize.height * 0.08),
                //         child: Text(
                //           "it's all about toy",
                //           style: gg.GoogleFonts.montserrat(
                //             fontSize: screenSize.height * 0.023,
                //           ),
                //           textAlign: TextAlign.end,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.height * 0.02,
                      left: screenSize.width * 0.35),
                  child: Center(
                      child: Row(
                    children: [
                      Text(
                        "Welcome To Rayoxeltoys Official Website",
                        style: gg.GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: screenSize.height * 0.025,
                            fontWeight: FontWeight.w700),
                      ),
                      Image.asset(
                        "wizard-hat.png",
                        width: screenSize.height * 0.04,
                      ),
                    ],
                  )),

                  // child:

                  // Row(
                  //   mainAxisSize: MainAxisSize.max,
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Column(
                  //       children: [
                  //         Container(
                  //           decoration: BoxDecoration(boxShadow: [
                  //             BoxShadow(
                  //                 blurRadius: 5.0,
                  //                 color: Colors.black26,
                  //                 spreadRadius: 2.0,
                  //                 offset: Offset(0, 6))
                  //           ]),
                  //           child: SizedBox(
                  //             height: screenSize.width / 6,
                  //             width: screenSize.width / 3.8,
                  //             child: ClipRRect(
                  //               borderRadius: BorderRadius.circular(5.0),
                  //               child: Image.asset(
                  //                 'unnamed.png',
                  //                 fit: BoxFit.cover,
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: EdgeInsets.only(
                  //             top: screenSize.height / 70,
                  //           ),
                  //           child: Text(
                  //             'Chin Pokies #041',
                  //             style: gg.GoogleFonts.montserrat(
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.w500,
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     Column(
                  //       children: [
                  //         Container(
                  //           decoration: BoxDecoration(boxShadow: [
                  //             BoxShadow(
                  //                 blurRadius: 5.0,
                  //                 color: Colors.black26,
                  //                 spreadRadius: 2.0,
                  //                 offset: Offset(0, 6))
                  //           ]),
                  //           child: SizedBox(
                  //             height: screenSize.width / 6,
                  //             width: screenSize.width / 3.8,
                  //             child: ClipRRect(
                  //               borderRadius: BorderRadius.circular(5.0),
                  //               child: Image.asset(
                  //                 'unnamed2.png',
                  //                 fit: BoxFit.cover,
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: EdgeInsets.only(
                  //             top: screenSize.height / 70,
                  //           ),
                  //           child: Text(
                  //             'HG #038',
                  //             style: gg.GoogleFonts.montserrat(
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.w500,
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     Column(
                  //       children: [
                  //         Container(
                  //           decoration: BoxDecoration(boxShadow: [
                  //             BoxShadow(
                  //                 blurRadius: 5.0,
                  //                 color: Colors.black26,
                  //                 spreadRadius: 2.0,
                  //                 offset: Offset(0, 6))
                  //           ]),
                  //           child: SizedBox(
                  //             height: screenSize.width / 6,
                  //             width: screenSize.width / 3.8,
                  //             child: ClipRRect(
                  //               borderRadius: BorderRadius.circular(5.0),
                  //               child: Image.asset(
                  //                 'unnamed3.png',
                  //                 fit: BoxFit.cover,
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: EdgeInsets.only(
                  //             top: screenSize.height / 70,
                  //           ),
                  //           child: Text(
                  //             'luke spacewalker #028',
                  //             style: gg.GoogleFonts.montserrat(
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.w500,
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ),
                SizedBox(
                  height: screenSize.height * 0.03,
                ),
                Container(
                  width: screenSize.width * 0.25,
                  height: screenSize.height * 0.08,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.03),
                    child: Row(
                      children: [
                        Image.asset(
                          "flask.png",
                          width: screenSize.width * 0.02,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.01,
                        ),
                        Text(
                          "Get Your Rayoxeltoys",
                          style: gg.GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: screenSize.height * 0.025,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                )
                // Padding(
                //   padding: EdgeInsets.only(left: screenSize.width * 0.05),
                //   child: Align(
                //     alignment: Alignment.centerLeft,
                //     child: Container(
                //       width: screenSize.width * 0.35,
                //       height: screenSize.height * 0.1,
                //       padding: EdgeInsets.only(left: screenSize.width * 0.02),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10),
                //         boxShadow: [
                //           BoxShadow(
                //               blurRadius: 5.0,
                //               color: Colors.black12,
                //               spreadRadius: 5.0,
                //               offset: Offset(0, 8))
                //         ],
                //         color: Colors.blue.shade700,
                //       ),
                //       child: Row(children: [
                //         SizedBox(
                //           height: screenSize.height * 0.08,
                //           width: screenSize.height * 0.08,
                //           child: ClipRRect(
                //             borderRadius: BorderRadius.circular(10.0),
                //             child: Image.asset(
                //               'opensea.jpg',
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: screenSize.width * 0.015,
                //         ),
                //         Text(
                //           "Buy On Opensea",
                //           style: gg.GoogleFonts.montserrat(
                //               fontSize: screenSize.width * 0.02,
                //               fontWeight: FontWeight.w500,
                //               color: Colors.white),
                //         ),
                //       ]),
                //     ),
                //   ),
                // ),
                ,
                SizedBox(
                  height: screenSize.height * 0.03,
                ),
                Text(
                  "Follow us on : ",
                  style: gg.GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: screenSize.height * 0.023,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenSize.width * 0.43,
                      top: screenSize.height * 0.03),
                  child: Row(
                    children: [
                      Image.asset(
                        "twitter.png",
                        width: screenSize.width * 0.02,
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      Image.asset(
                        "discord.png",
                        width: screenSize.width * 0.02,
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      Image.asset(
                        "instagram.png",
                        width: screenSize.width * 0.02,
                      ),
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      Image.asset(
                        "tik-tok.png",
                        width: screenSize.width * 0.02,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   "Rayoxeltoys",
                        //   style: gg.GoogleFonts.montserrat(
                        //       color: Colors.white,
                        //       fontSize: screenSize.height * 0.02,
                        //       fontWeight: FontWeight.w600),
                        // ),
                        // SizedBox(
                        //   height: screenSize.height * 0.03,
                        // ),
                        SizedBox(
                          height: screenSize.height * 0.15,
                          width: screenSize.height * 0.15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "pp.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        Container(
                          width: screenSize.width * 0.4,
                          height: screenSize.height * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(2),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    // blurRadius: 5,
                                    offset: Offset(6, 10))
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenSize.width * 0.02,
                                    top: screenSize.height * 0.02),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "RAYOXELTOYS",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: screenSize.height * 0.03,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenSize.width * 0.02,
                                    top: screenSize.height * 0.02),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: screenSize.width * 0.35,
                                    child: Text(
                                      "the rayoxeltoys is a collection of ongoing 666 unique toys NFTs - unique digital collectibles living in the polygon blockhain. buy all rayoxeltoys house version for your toys to live in!, many types of toys here such as monsters, collaborations, humans, animals, bored monkeys, vehicles, and others! Collect toys here to make them real!",
                                      textAlign: TextAlign.justify,
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.black,
                                          fontSize: screenSize.height * 0.02,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                        // Container(
                        //   width: screenSize.width * 0.4,
                        //   child: Text(
                        //     "the rayoxeltoys is a collection of ongoing 666 unique toys NFTs - unique digital collectibles living in the polygon blockhain. buy all rayoxeltoys house version for your toys to live in!, many types of toys here such as monsters, collaborations, humans, animals, bored monkeys, vehicles, and others! Collect toys here to make them real!",
                        //     textAlign: TextAlign.justify,

                        //     // softWrap: true,
                        //     style: gg.GoogleFonts.montserrat(
                        //         color: Colors.white,
                        //         fontSize: screenSize.height * 0.02,
                        //         fontWeight: FontWeight.w400),
                        //   ),
                        // )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   "Utility",
                        //   style: gg.GoogleFonts.montserrat(
                        //       color: Colors.white,
                        //       fontSize: screenSize.height * 0.023,
                        //       fontWeight: FontWeight.w700),
                        // ),
                        // SizedBox(
                        //   height: screenSize.height * 0.03,
                        // ),
                        SizedBox(
                          height: screenSize.height * 0.15,
                          width: screenSize.height * 0.15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "Rayoxeltoy.jpeg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        Container(
                          width: screenSize.width * 0.4,
                          height: screenSize.height * 0.35,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(2),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    // blurRadius: 5,
                                    offset: Offset(6, 10))
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenSize.width * 0.02,
                                    top: screenSize.height * 0.02),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "UTILITY",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: screenSize.height * 0.03,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenSize.width * 0.02,
                                    top: screenSize.height * 0.02),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: screenSize.width * 0.3,
                                    child: Text(
                                      // Witches like to doodle to fill their spare time while waiting for the item to be sold lol, fill their time by asking for a logo/banner for your company or Twitter handle
                                      "smoky witch's house after making toys for rayoxeltoys owners, You can get the toy file from them by chatting them up on discord or Twitter",
                                      textAlign: TextAlign.justify,
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.black,
                                          fontSize: screenSize.height * 0.02,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenSize.width * 0.02,
                                    top: screenSize.height * 0.02),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: screenSize.width * 0.3,
                                    child: Text(
                                      "Witches like to doodle to fill their spare time while waiting for the item to be sold lol, fill their time by asking for a logo/banner for your company or Twitter handle",
                                      //  "smoky witch's house after making toys for rayoxeltoys owners, You can get the toy file from them by chatting them up on discord or Twitter",
                                      textAlign: TextAlign.justify,
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.black,
                                          fontSize: screenSize.height * 0.02,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenSize.width * 0.02,
                                    top: screenSize.height * 0.02),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: screenSize.width * 0.3,
                                    child: Text(
                                      "Kind wizard will drop a special free toy for loyal holders",
                                      //  "smoky witch's house after making toys for rayoxeltoys owners, You can get the toy file from them by chatting them up on discord or Twitter",
                                      textAlign: TextAlign.justify,
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.black,
                                          fontSize: screenSize.height * 0.02,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.035,
                ),
                Container(
                  width: screenSize.width,
                  height: 5,
                  color: Colors.black,
                ),
                Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.08,
                  color: Colors.yellow,
                ),
                Container(
                  width: screenSize.width,
                  height: 5,
                  color: Colors.black,
                ),
                Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.85,
                  color: Colors.pinkAccent,
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.06,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: screenSize.width * 0.4,
                            height: screenSize.height * 0.7,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    width: screenSize.width * 0.2,
                                    height: screenSize.height * 0.2,
                                    child: ClipRRect(
                                        child: Image.asset(
                                      'Rayoxeltoy.jpeg',
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.4,
                            height: screenSize.height * 0.45,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(2),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      // blurRadius: 5,
                                      offset: Offset(6, 10))
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.02,
                                      top: screenSize.height * 0.02),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "PLAY WITH 'EM",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.black,
                                          fontSize: screenSize.height * 0.03,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.02,
                                      top: screenSize.height * 0.02),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: screenSize.width * 0.3,
                                      child: Text(
                                        // Witches like to doodle to fill their spare time while waiting for the item to be sold lol, fill their time by asking for a logo/banner for your company or Twitter handle
                                        "To become a member  buy or custom your rayoxeltoys on opensea",
                                        textAlign: TextAlign.justify,
                                        style: gg.GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: screenSize.height * 0.02,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.02,
                                      top: screenSize.height * 0.02),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: screenSize.width * 0.3,
                                      child: Text(
                                        "unique digital collectibles living in the polygon blockhain. buy a rayoxeltoys v1 house for your toys to live in!, many types of toys here such as monsters, collaborations, humans, animals, bored monkeys, vehicles, and others! Collect toys here to make them real!",
                                        //  "smoky witch's house after making toys for rayoxeltoys owners, You can get the toy file from them by chatting them up on discord or Twitter",
                                        textAlign: TextAlign.justify,
                                        style: gg.GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: screenSize.height * 0.02,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       left: screenSize.width * 0.02,
                                //       top: screenSize.height * 0.02),
                                //   child: Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: Container(
                                //       width: screenSize.width * 0.3,
                                //       child: Text(
                                //         "Kind wizard will drop a special free toy for loyal holders",
                                //         //  "smoky witch's house after making toys for rayoxeltoys owners, You can get the toy file from them by chatting them up on discord or Twitter",
                                //         textAlign: TextAlign.justify,
                                //         style: gg.GoogleFonts.montserrat(
                                //             color: Colors.black,
                                //             fontSize: screenSize.height * 0.02,
                                //             fontWeight: FontWeight.w400),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                SizedBox(
                                  height: screenSize.height * 0.02,
                                ),
                                Container(
                                  width: screenSize.width * 0.3,
                                  height: screenSize.height * 0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(2),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            // blurRadius: 5,
                                            offset: Offset(6, 10))
                                      ]),
                                  child: Center(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "Logomark-Blue.svg",
                                        width: screenSize.width * 0.04,
                                        height: screenSize.width * 0.04,
                                      ),
                                      SizedBox(
                                        width: screenSize.width * 0.02,
                                      ),
                                      Text(
                                        "Buy On Opensea",
                                        style: gg.GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontSize: screenSize.height * 0.03,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  )),
                                )
                              ],
                            ),
                          )
                          // SizedBox(
                          //   height: screenSize.width * 0.4,
                          //   width: screenSize.height * 0.7,
                          //   child: ClipRRect(
                          //     borderRadius: BorderRadius.circular(10.0),
                          //     child: Image.asset(
                          //       'Rayoxeltoy.jpeg',
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenSize.width,
                  height: 5,
                  color: Colors.black,
                ),
                Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.08,
                  color: Colors.yellow,
                ),
                Container(
                  width: screenSize.width,
                  height: 5,
                  color: Colors.black,
                ),
                Container(
                  width: screenSize.width,
                  height: screenSize.height * 1.6,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.04),
                        child: Container(
                          width: screenSize.width * 0.5,
                          height: screenSize.height * 0.15,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(2),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    // blurRadius: 5,
                                    offset: Offset(6, 10))
                              ]),
                          child: Center(
                              child: Text(
                            "ROADMAP",
                            style: gg.GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: screenSize.height * 0.06,
                                fontWeight: FontWeight.w900),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: screenSize.width * 0.4,
                            height: screenSize.height * 0.6,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(2),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      // blurRadius: 5,
                                      offset: Offset(6, 10))
                                ]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: screenSize.height * 0.02,
                                ),
                                Text(
                                  "Phase 1.0 ",
                                  style: gg.GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: screenSize.height * 0.03,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.025),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "WELCOME TO RAYOXELTOYS",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: screenSize.height * 0.025,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenSize.width * 0.35,
                                  child: Text(
                                    "1.) Welcome to Rayoxeltoys the toy wizard project , here we can make everything you want!",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: screenSize.height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.025),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "SUPPLY",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: screenSize.height * 0.025,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenSize.width * 0.35,
                                  child: Text(
                                    "2.) recruitment of young wizards in the magic house to provide 666 unique and colorful toys",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: screenSize.height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                // DEVELOPING AND GROWING
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.025),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "DEVELOPING AND GROWING",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: screenSize.height * 0.025,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenSize.width * 0.35,
                                  child: Text(
                                    "3.) witches stay up every night to develop community, Collaboration, And attraction",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: screenSize.height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                //  SUPPORTS
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.025),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "SUPPORTS",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: screenSize.height * 0.025,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenSize.width * 0.35,
                                  child: Text(
                                    "4.) good witch supports the new nft artists!",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: screenSize.height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                // BUY-WL
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.025),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "BUY-WL",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: screenSize.height * 0.025,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenSize.width * 0.35,
                                  child: Text(
                                    "5.) Get yourself every wizard colorful  unique house edition for your toys to Live in!",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: screenSize.height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.4,
                            height: screenSize.height * 0.6,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(2),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      // blurRadius: 5,
                                      offset: Offset(6, 10))
                                ]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: screenSize.height * 0.02,
                                ),
                                Text(
                                  "Phase 2.0 ",
                                  style: gg.GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: screenSize.height * 0.03,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.025),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "NEW UNIVERSE",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: screenSize.height * 0.025,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenSize.width * 0.35,
                                  child: Text(
                                    "1.) keep playing with our little wizard, the wizard is into an adult and ready to provide 568 cute and adorable 2D's rayoxeltoys",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: screenSize.height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.025),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "2 SPECIAL TOYS FOR BIG AND UNIQUE RAYOXELTOYS HOLDER",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: screenSize.height * 0.025,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenSize.width * 0.35,
                                  child: Text(
                                    "2.) The remaining fumes causes the toys to become real and ready to be sent through the wizard's magical portal, this toy is for appreciation for the holder who holds the most toys!",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: screenSize.height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                // DEVELOPING AND GROWING
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.025),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "CHARITY",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: screenSize.height * 0.025,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenSize.width * 0.35,
                                  child: Text(
                                    "3.) 10 % of every sale from second collection will be turned into food for hungry people",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: screenSize.height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                //  SUPPORTS
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.025),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "BUILD OUR HOUSE",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: screenSize.height * 0.025,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenSize.width * 0.35,
                                  child: Text(
                                    "4.) Collaboration with big 2d project, Which will help the project to reach many people and the project to grow",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: screenSize.height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                // BUY-WL
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenSize.width * 0.025),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "BUY-WL",
                                      style: gg.GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: screenSize.height * 0.025,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenSize.width * 0.35,
                                  child: Text(
                                    "5.) buy minting tickets to get whitelisted in our magical 2d collection, minting tickets will be available after 444 minted",
                                    style: gg.GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: screenSize.height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * 0.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: screenSize.width * 0.4,
                            height: screenSize.height * 0.6,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(2),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      // blurRadius: 5,
                                      offset: Offset(6, 10))
                                ]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: screenSize.height * 0.02,
                                ),
                                Text(
                                  "Phase 3.0 ",
                                  style: gg.GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: screenSize.height * 0.03,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                Text(
                                  "COMING SOON",
                                  style: gg.GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: screenSize.height * 0.025,
                                      fontWeight: FontWeight.w700),
                                ),
                                // Container(
                                //   width: screenSize.width * 0.35,
                                //   child: Text(
                                //     "1.) Welcome to Rayoxeltoys the toy wizard project , here we can make everything you want!",
                                //     style: gg.GoogleFonts.montserrat(
                                //         color: Colors.white,
                                //         fontSize: screenSize.height * 0.02,
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: screenSize.height * 0.01,
                                // ),
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       left: screenSize.width * 0.025),
                                //   child: Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: Text(
                                //       "SUPPLY",
                                //       style: gg.GoogleFonts.montserrat(
                                //           color: Colors.white,
                                //           fontSize: screenSize.height * 0.025,
                                //           fontWeight: FontWeight.w700),
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   width: screenSize.width * 0.35,
                                //   child: Text(
                                //     "2.) recruitment of young wizards in the magic house to provide 666 unique and colorful toys",
                                //     style: gg.GoogleFonts.montserrat(
                                //         color: Colors.white,
                                //         fontSize: screenSize.height * 0.02,
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: screenSize.height * 0.01,
                                // ),
                                // // DEVELOPING AND GROWING
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       left: screenSize.width * 0.025),
                                //   child: Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: Text(
                                //       "DEVELOPING AND GROWING",
                                //       style: gg.GoogleFonts.montserrat(
                                //           color: Colors.white,
                                //           fontSize: screenSize.height * 0.025,
                                //           fontWeight: FontWeight.w700),
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   width: screenSize.width * 0.35,
                                //   child: Text(
                                //     "3.) witches stay up every night to develop community, Collaboration, And attraction",
                                //     style: gg.GoogleFonts.montserrat(
                                //         color: Colors.white,
                                //         fontSize: screenSize.height * 0.02,
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: screenSize.height * 0.01,
                                // ),
                                // //  SUPPORTS
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       left: screenSize.width * 0.025),
                                //   child: Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: Text(
                                //       "SUPPORTS",
                                //       style: gg.GoogleFonts.montserrat(
                                //           color: Colors.white,
                                //           fontSize: screenSize.height * 0.025,
                                //           fontWeight: FontWeight.w700),
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   width: screenSize.width * 0.35,
                                //   child: Text(
                                //     "4.) good witch supports the new nft artists!",
                                //     style: gg.GoogleFonts.montserrat(
                                //         color: Colors.white,
                                //         fontSize: screenSize.height * 0.02,
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: screenSize.height * 0.01,
                                // ),
                                // // BUY-WL
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       left: screenSize.width * 0.025),
                                //   child: Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: Text(
                                //       "BUY-WL",
                                //       style: gg.GoogleFonts.montserrat(
                                //           color: Colors.white,
                                //           fontSize: screenSize.height * 0.025,
                                //           fontWeight: FontWeight.w700),
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   width: screenSize.width * 0.35,
                                //   child: Text(
                                //     "5.) Get yourself every wizard colorful  unique house edition for your toys to Live in!",
                                //     style: gg.GoogleFonts.montserrat(
                                //         color: Colors.white,
                                //         fontSize: screenSize.height * 0.02,
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // )
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.4,
                            height: screenSize.height * 0.6,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(2),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      // blurRadius: 5,
                                      offset: Offset(6, 10))
                                ]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: screenSize.height * 0.02,
                                ),
                                Text(
                                  "Phase 4.0 ",
                                  style: gg.GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: screenSize.height * 0.03,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.01,
                                ),
                                Text(
                                  "COMING SOON",
                                  style: gg.GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: screenSize.height * 0.025,
                                      fontWeight: FontWeight.w700),
                                ),
                                // Container(
                                //   width: screenSize.width * 0.35,
                                //   child: Text(
                                //     "1.) keep playing with our little wizard, the wizard is into an adult and ready to provide 568 cute and adorable 2D's rayoxeltoys",
                                //     style: gg.GoogleFonts.montserrat(
                                //         color: Colors.white,
                                //         fontSize: screenSize.height * 0.02,
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: screenSize.height * 0.01,
                                // ),
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       left: screenSize.width * 0.025),
                                //   child: Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: Text(
                                //       "2 SPECIAL TOYS FOR BIG AND UNIQUE RAYOXELTOYS HOLDER",
                                //       style: gg.GoogleFonts.montserrat(
                                //           color: Colors.white,
                                //           fontSize: screenSize.height * 0.025,
                                //           fontWeight: FontWeight.w700),
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   width: screenSize.width * 0.35,
                                //   child: Text(
                                //     "2.) The remaining fumes causes the toys to become real and ready to be sent through the wizard's magical portal, this toy is for appreciation for the holder who holds the most toys!",
                                //     style: gg.GoogleFonts.montserrat(
                                //         color: Colors.white,
                                //         fontSize: screenSize.height * 0.02,
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: screenSize.height * 0.01,
                                // ),
                                // // DEVELOPING AND GROWING
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       left: screenSize.width * 0.025),
                                //   child: Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: Text(
                                //       "CHARITY",
                                //       style: gg.GoogleFonts.montserrat(
                                //           color: Colors.white,
                                //           fontSize: screenSize.height * 0.025,
                                //           fontWeight: FontWeight.w700),
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   width: screenSize.width * 0.35,
                                //   child: Text(
                                //     "3.) 10 % of every sale from second collection will be turned into food for hungry people",
                                //     style: gg.GoogleFonts.montserrat(
                                //         color: Colors.white,
                                //         fontSize: screenSize.height * 0.02,
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: screenSize.height * 0.01,
                                // ),
                                // //  SUPPORTS
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       left: screenSize.width * 0.025),
                                //   child: Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: Text(
                                //       "BUILD OUR HOUSE",
                                //       style: gg.GoogleFonts.montserrat(
                                //           color: Colors.white,
                                //           fontSize: screenSize.height * 0.025,
                                //           fontWeight: FontWeight.w700),
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   width: screenSize.width * 0.35,
                                //   child: Text(
                                //     "4.) Collaboration with big 2d project, Which will help the project to reach many people and the project to grow",
                                //     style: gg.GoogleFonts.montserrat(
                                //         color: Colors.white,
                                //         fontSize: screenSize.height * 0.02,
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // ),
                                // SizedBox(
                                //   height: screenSize.height * 0.01,
                                // ),
                                // // BUY-WL
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //       left: screenSize.width * 0.025),
                                //   child: Align(
                                //     alignment: Alignment.centerLeft,
                                //     child: Text(
                                //       "BUY-WL",
                                //       style: gg.GoogleFonts.montserrat(
                                //           color: Colors.white,
                                //           fontSize: screenSize.height * 0.025,
                                //           fontWeight: FontWeight.w700),
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   width: screenSize.width * 0.35,
                                //   child: Text(
                                //     "5.) get yourself every wizard colorful unique house edition for your toys to live in!",
                                //     style: gg.GoogleFonts.montserrat(
                                //         color: Colors.white,
                                //         fontSize: screenSize.height * 0.02,
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: screenSize.width,
                  height: 5,
                  color: Colors.black,
                ),
                Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.08,
                  color: Colors.yellow,
                ),
                Container(
                  width: screenSize.width,
                  height: 5,
                  color: Colors.black,
                ),
                Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.7,
                  color: Colors.black,
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                      Text(
                        "Collaboration",
                        style: gg.GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: screenSize.height * 0.04,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                      Text(
                        "we support and grow our community with magical collaborations with ink spills and ideas, below are all our collaborative artworks with other projects",
                        textAlign: TextAlign.center,
                        style: gg.GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: screenSize.height * 0.02,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.15,
                        width: screenSize.height * 0.15,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "Rayoxeltoy.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Container(
                //   width: screenSize.width,
                //   height: screenSize.height * 0.8,
                //   color: Colors.black,
                //   child: Column(children: [
                //     SizedBox(
                //       height: screenSize.height * 0.05,
                //     ),
                //     Column(
                //       children: [
                //         Text(
                //           "Road Map",
                //           style: gg.GoogleFonts.montserrat(
                //               fontSize: screenSize.height * 0.03,
                //               fontWeight: FontWeight.w600,
                //               color: Colors.white),
                //         ),
                //         Padding(
                //           padding:
                //               EdgeInsets.only(top: screenSize.height * 0.02),
                //           child: Container(
                //             width: screenSize.width * 0.8,
                //             height: 5,
                //             color: Colors.white,
                //           ),
                //         )
                //       ],
                //     ),
                //     SizedBox(
                //       height: screenSize.height * 0.1,
                //     ),
                //     Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Column(
                //           children: [
                //             Container(
                //               margin: const EdgeInsets.all(15.0),
                //               padding: const EdgeInsets.all(10.0),
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(5),
                //                   border: Border.all(
                //                       color: Colors.teal.shade300, width: 5)),
                //               child: Text(
                //                 "Done !",
                //                 style: gg.GoogleFonts.montserrat(
                //                     fontSize: screenSize.height * 0.03,
                //                     fontWeight: FontWeight.w600,
                //                     color: Colors.teal.shade300),
                //               ),
                //             ),
                //             Container(
                //               margin: const EdgeInsets.all(15.0),
                //               padding: const EdgeInsets.all(10.0),
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(5),
                //                   border: Border.all(
                //                       color: Colors.teal.shade300, width: 5)),
                //               child: Column(
                //                 children: [
                //                   Container(
                //                     width: screenSize.width * 0.2,
                //                     height: screenSize.height * 0.1,
                //                     decoration: BoxDecoration(
                //                       color: Colors.white,
                //                       borderRadius: BorderRadius.circular(5),
                //                     ),
                //                     child: Column(
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               top: screenSize.height * 0.01,
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Phase 1",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 18,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors.teal),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Price : 0.002 - 0.004 ETH",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 14,
                //                                 fontWeight: FontWeight.w500,
                //                                 color: Colors.teal),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Supply 15 items",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 14,
                //                                 fontWeight: FontWeight.w500,
                //                                 color: Colors.teal),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Sold Out",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 20,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors.tealAccent),
                //                           ),
                //                         )
                //                       ],
                //                     ),
                //                   ),
                //                   SizedBox(
                //                     height: screenSize.height * 0.02,
                //                   ),
                //                   Container(
                //                     width: screenSize.width * 0.2,
                //                     height: screenSize.height * 0.1,
                //                     decoration: BoxDecoration(
                //                       color: Colors.white,
                //                       borderRadius: BorderRadius.circular(5),
                //                     ),
                //                     child: Column(
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               top: screenSize.height * 0.01,
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Phase 2",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 18,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors.teal),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Price : 0.004 - 0.0065 ETH",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 14,
                //                                 fontWeight: FontWeight.w500,
                //                                 color: Colors.teal),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Supply 15 items",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 14,
                //                                 fontWeight: FontWeight.w500,
                //                                 color: Colors.teal),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Sold Out",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 20,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors.tealAccent),
                //                           ),
                //                         )
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //         Column(
                //           children: [
                //             Container(
                //               margin: const EdgeInsets.all(15.0),
                //               padding: const EdgeInsets.all(10.0),
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(5),
                //                   border: Border.all(
                //                       color: Colors.purple.shade300, width: 5)),
                //               child: Text(
                //                 "Ongoing !",
                //                 style: gg.GoogleFonts.montserrat(
                //                     fontSize: screenSize.height * 0.03,
                //                     fontWeight: FontWeight.w600,
                //                     color: Colors.purple.shade300),
                //               ),
                //             ),
                //             Container(
                //               margin: const EdgeInsets.all(15.0),
                //               padding: const EdgeInsets.all(10.0),
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(5),
                //                   border: Border.all(
                //                       color: Colors.purple.shade300, width: 5)),
                //               child: Column(
                //                 children: [
                //                   Container(
                //                     width: screenSize.width * 0.2,
                //                     height: screenSize.height * 0.1,
                //                     decoration: BoxDecoration(
                //                       color: Colors.white,
                //                       borderRadius: BorderRadius.circular(5),
                //                     ),
                //                     child: Column(
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               top: screenSize.height * 0.01,
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Phase 3",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 18,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors.purple.shade500),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Price : 0.0065 - 0.007 ETH",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 14,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors.purple.shade300),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Supply 15 items",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 14,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors.purple.shade300),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "14/15",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 20,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors.purple.shade200),
                //                           ),
                //                         )
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //         Column(
                //           children: [
                //             Container(
                //               margin: const EdgeInsets.all(15.0),
                //               padding: const EdgeInsets.all(10.0),
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(5),
                //                   border: Border.all(
                //                       color: Colors.amberAccent, width: 5)),
                //               child: Text(
                //                 "Coming Soon !",
                //                 style: gg.GoogleFonts.montserrat(
                //                     fontSize: screenSize.height * 0.03,
                //                     fontWeight: FontWeight.w600,
                //                     color: Colors.amberAccent),
                //               ),
                //             ),
                //             Container(
                //               margin: const EdgeInsets.all(15.0),
                //               padding: const EdgeInsets.all(10.0),
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(5),
                //                   border: Border.all(
                //                       color: Colors.amberAccent, width: 5)),
                //               child: Column(
                //                 children: [
                //                   Container(
                //                     width: screenSize.width * 0.2,
                //                     height: screenSize.height * 0.1,
                //                     decoration: BoxDecoration(
                //                       color: Colors.white,
                //                       borderRadius: BorderRadius.circular(5),
                //                     ),
                //                     child: Column(
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       children: [
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               top: screenSize.height * 0.01,
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Phase 4",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 18,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors.amberAccent),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Price : 0.007 - 0.0075 ETH",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 14,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors
                //                                     .amberAccent.shade200),
                //                           ),
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(
                //                               left: screenSize.width * 0.02),
                //                           child: Text(
                //                             "Supply 15 items",
                //                             style: gg.GoogleFonts.montserrat(
                //                                 fontSize: 14,
                //                                 fontWeight: FontWeight.w600,
                //                                 color: Colors
                //                                     .amberAccent.shade200),
                //                           ),
                //                         ),
                //                         // Padding(
                //                         //   padding: EdgeInsets.only(
                //                         //       left: screenSize.width * 0.02),
                //                         //   child: Text(
                //                         //     "14/15",
                //                         //     style: gg.GoogleFonts.montserrat(
                //                         //         fontSize: 20,
                //                         //         fontWeight: FontWeight.w600,
                //                         //         color: Colors
                //                         //             .amberAccent.shade100),
                //                         //   ),
                //                         // )
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         )
                //       ],
                //     )
                //   ]),
                // )
              ],
            ),
            // Center(
            //   heightFactor: 1,
            //   child: Padding(
            //     padding: EdgeInsets.only(
            //       top: screenSize.height * 0.55,
            //       left: screenSize.width / 5,
            //       right: screenSize.width / 5,
            //     ),
            //     child: Container(
            //       width: screenSize.width * 0.5,
            //       height: screenSize.height * 0.1,
            //       decoration: BoxDecoration(
            //           boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)],
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(10)),
            //       // floating quick access bar
            //       // ...
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
