// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fl_chart/fl_chart.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  PageController controller = PageController();
  List page = List.filled(3, false);
  Map dict = {
    "active": 0,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () => {}, icon: Icon(Icons.settings)),
          ),
        ],
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Stack(
              // clipBehavior: Clip.none,
              // alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 1024,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Container(
                      //   color: Colors.amber,
                      //   child: Column(
                      //     children: [
                      //     ],
                      //   ),
                      // ),
                      SizedBox(
                        height: 1024,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 70, 8, 8),
                          child: Container(
                            height: 1024,
                            padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Center(
                                    child: Text(
                                  "Madelyn Dias",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                )),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xFF2BB6E0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.star_border,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                          Text(
                                            "Points",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0x80FFFFFF),
                                            ),
                                          ),
                                          Text(
                                            "590",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 18,
                                                color: Color(0xFFFFFFFF)),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 1,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                          colors: [
                                            Color(0x00FFFFFF),
                                            Color(0xFFFFFFFF),
                                            Color(0x00FFFFFF)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        )),
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.public,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                          Text(
                                            "World Rank",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0x80FFFFFF),
                                            ),
                                          ),
                                          Text(
                                            "#1,438",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 18,
                                                color: Color(0xFFFFFFFF)),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 1,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                          colors: [
                                            Color(0x00FFFFFF),
                                            Color(0xFFFFFFFF),
                                            Color(0x00FFFFFF)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        )),
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.open_with,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                          Text(
                                            "Local Rank",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0x80FFFFFF),
                                            ),
                                          ),
                                          Text(
                                            "#56",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 18,
                                                color: Color(0xFFFFFFFF)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "Badges",
                                              style: TextStyle(
                                                  color: dict["active"] == 0
                                                      ? Color(0xFF2BB6E0)
                                                      : Color(0xFF858494),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            dict["active"] == 0
                                                ? Container(
                                                    height: 6,
                                                    width: 6,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            Color(0xFF2BB6E0)),
                                                  )
                                                : Container()
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Stats",
                                              style: TextStyle(
                                                  color: dict["active"] == 1
                                                      ? Color(0xFF2BB6E0)
                                                      : Color(0xFF858494),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            dict["active"] == 1
                                                ? Container(
                                                    height: 6,
                                                    width: 6,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            Color(0xFF2BB6E0)),
                                                  )
                                                : Container()
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Details",
                                              style: TextStyle(
                                                  color: dict["active"] == 2
                                                      ? Color(0xFF2BB6E0)
                                                      : Color(0xFF858494),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            dict["active"] == 2
                                                ? Container(
                                                    height: 6,
                                                    width: 6,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            Color(0xFF2BB6E0)),
                                                  )
                                                : Container()
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    SizedBox(
                                      height: 1000 - 370,
                                      child: PageView(
                                        onPageChanged: (value) {
                                          print(value);
                                          dict["active"] = value.floor();
                                          setState(() {});
                                        },
                                        controller: controller,
                                        children: [
                                          Container(
                                            child: GridView.count(
                                              crossAxisCount: 3,
                                              children: [
                                                Svglock(
                                                    asset: "assets/Badge1.svg",
                                                    locked: false),
                                                Svglock(
                                                    asset: "assets/Badge2.svg",
                                                    locked: false),
                                                Svglock(
                                                    asset: "assets/Badge3.svg",
                                                    locked: false),
                                                Svglock(
                                                    asset: "assets/Badge4.svg",
                                                    locked: false),
                                                Svglock(
                                                    asset: "assets/Badge5.svg",
                                                    locked: false),
                                                Svglock(
                                                    asset: "assets/Badge6.svg",
                                                    locked: true),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: ListView(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF5F9FF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  padding: EdgeInsets.all(16),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        14,
                                                                    vertical:
                                                                        10),
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16),
                                                                border:
                                                                    Border.all(
                                                                        color: Color(
                                                                            0xFFEFEEFC),
                                                                        width:
                                                                            1.5)),
                                                            child: Row(
                                                              children: [
                                                                Text("Monthly"),
                                                                Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down,
                                                                  color: Color(
                                                                      0xFF2BB6E0),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 30,
                                                      ),
                                                      Text(
                                                        "You have played a total\n24 quizzes this month!",
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      SizedBox(
                                                        height: 22,
                                                      ),
                                                      Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          SizedBox(
                                                            height: 138,
                                                            width: 138,
                                                            child:
                                                                CircularProgressIndicator(
                                                              strokeWidth: 10,
                                                              value: 37 / 50,
                                                              color: Color(
                                                                  0xFF0E104B),
                                                              backgroundColor:
                                                                  Color(
                                                                      0xFFFFFFFF),
                                                              strokeCap:
                                                                  StrokeCap
                                                                      .round,
                                                            ),
                                                          ),
                                                          Positioned(
                                                            child: Column(
                                                              children: [
                                                                Text.rich(TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text:
                                                                              "37",
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF0C092A),
                                                                            fontSize:
                                                                                32,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      TextSpan(
                                                                          text:
                                                                              "/50",
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0x80181254),
                                                                            fontSize:
                                                                                16,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                    ])),
                                                                Text(
                                                                    "quiz played",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0x800C092A),
                                                                      fontSize:
                                                                          16,
                                                                    ))
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 24,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 157.5,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    16),
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              12.0),
                                                                      child: Text(
                                                                          "5",
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF0C092A),
                                                                            fontSize:
                                                                                32,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          bottom:
                                                                              10.0),
                                                                      child: Icon(
                                                                          Icons
                                                                              .edit_outlined),
                                                                    )
                                                                  ],
                                                                ),
                                                                Text(
                                                                    "Quiz Created",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF0C092A),
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ))
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 157.5,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    16),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFF0E104B),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              12.0),
                                                                      child: Text(
                                                                          "21",
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize:
                                                                                32,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          bottom:
                                                                              10.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .military_tech_outlined,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                Text("Quiz Won",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ))
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 24,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF2BB6E0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  padding: EdgeInsets.all(16),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Top contribution to\nachieving SDGs",
                                                            style: TextStyle(
                                                                fontSize: 21,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8),
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                    0x32FFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16)),
                                                            child: Icon(
                                                              Icons
                                                                  .bar_chart_outlined,
                                                              size: 32,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 50,
                                                      ),
                                                      SizedBox(
                                                          height: 300,
                                                          child: BarChart1()),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ListView.builder(
                                            itemCount: 9,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(32),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                        color:
                                                            Color(0xFFF5F9FF),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            index % 2 == 0
                                                                ? "Task"
                                                                : "Video",
                                                            style: TextStyle(
                                                                fontSize: 24,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .teal
                                                                    .shade900),
                                                          ),
                                                          Text(
                                                            index % 2 == 0
                                                                ? "+2⭐"
                                                                : "+4⭐",
                                                            style: TextStyle(
                                                                fontSize: 24,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .teal
                                                                    .shade900),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 16,
                                                    )
                                                  ],
                                                ),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    // top: 50,
                    left: (MediaQuery.of(context).size.width / 2) - 48,
                    child: CircleAvatar(
                      radius: 48,
                      backgroundColor: Colors.purple,
                      child: Image.asset("assets/user.png"),
                    )),
                Positioned(
                  top: 72,
                  left: (MediaQuery.of(context).size.width / 2) + 24,
                  child: SvgPicture.asset("assets/Country.svg"),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class Svglock extends StatefulWidget {
  Svglock({super.key, required this.asset, required this.locked});

  dynamic asset;

  bool locked;

  @override
  State<Svglock> createState() => _SvglockState();
}

class _SvglockState extends State<Svglock> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // Center the icon in the middle
      children: [
        // SVG with darkness overlay
        SvgPicture.asset(
            width: 86, // Width of the SVG
            height: 86, // Height of the SVG
            widget.asset, // Your SVG file path
            fit: BoxFit.contain,
            colorFilter: widget.locked
                ? ColorFilter.mode(
                    Colors.black.withOpacity(0.5), // Darkness overlay (50%)
                    BlendMode.srcATop,
                  )
                : null
            // color: Colors.black.withOpacity(
            // 0.5), // Apply darkness to the SVG
            // colorBlendMode: BlendMode.darken,
            ),
        // Centered Icon on top of SVG
        widget.locked
            ? Icon(
                Icons.lock, // Your icon here
                size: 40, // Icon size
                color: Colors.white, // Icon color
              )
            : Container()
      ],
    );
  }
}

class BarChart1 extends StatelessWidget {
  BarChart1({super.key});

  dynamic vals = ["3/10", "8/10", "6/10"];
  dynamic values = [3 / 10, 8 / 10, 6 / 10];
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          enabled: false,
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: (group) => Colors.transparent,
            tooltipPadding: EdgeInsets.zero,
            tooltipMargin: 8,
            getTooltipItem: (
              BarChartGroupData group,
              int groupIndex,
              BarChartRodData rod,
              int rodIndex,
            ) {
              return BarTooltipItem(
                "",
                const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 60,
              getTitlesWidget: getTitles,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              interval: 0.25,
              showTitles: true,
              reservedSize: 45,
              getTitlesWidget: getleftTitles,
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(
            show: true,
            border: Border(
              top: BorderSide.none,
              right: BorderSide.none,
              left: BorderSide.none,
              bottom: BorderSide.none,
            )),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                  width: 32,
                  toY: values[0],
                  color: Color(0xFF1A4B79),
                  borderRadius: BorderRadius.circular(8))
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                  width: 32,
                  toY: values[1],
                  color: Color(0xFF0E104B),
                  borderRadius: BorderRadius.circular(8))
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                  width: 32,
                  toY: values[2],
                  color: Color(0xFF1C5DAA),
                  borderRadius: BorderRadius.circular(8))
            ],
            showingTooltipIndicators: [0],
          ),
        ],
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false, // Disable vertical lines
          horizontalInterval: 0.01, // Interval set to 0.25
          checkToShowHorizontalLine: (value) {
            // Ensure horizontal lines are shown for all specified values
            if (value == 0.01 ||
                value == 0.25000000000000006 ||
                value == 0.5000000000000002 ||
                value == 0.7500000000000004 ||
                value == 0.9900000000000007) {
              return true; // Show lines at y = 0, 0.25, 0.5, 0.75, and 1
            }
            return false; // Hide all other lines
          },
          getDrawingHorizontalLine: (double value) => FlLine(
            color: Colors.white,
            strokeWidth: 0.4,
            dashArray: [10, 8], // Dashed line with custom pattern
          ),
        ),
        alignment: BarChartAlignment.spaceAround,
        minY: 0,
        maxY: 1,
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    final style1 = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 16,
    );
    final style2 = TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.normal,
      fontSize: 12,
    );
    String text = "${vals[value.floor()]}\nQuestions\nAnswered";
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text.rich(
        TextSpan(children: [
          TextSpan(
            text: "${vals[value.floor()]}\n",
            style: style1,
          ),
          TextSpan(
            text: "Questions\nAnswered",
            style: style2,
          ),
        ]),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget getleftTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text = "Questions\nAnswered";
    switch (value) {
      case 0:
        text = '%0';
        break;
      case 0.25:
        text = '%25';
        break;
      case 0.5:
        text = '%50';
        break;
      case 0.75:
        text = '%75';
        break;
      case 1:
        text = '%100';
        break;
      default:
        print(value);
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 5,
      child: Text(text, style: style),
    );
  }

  LinearGradient get _barsGradient => LinearGradient(
        colors: [
          Color(0xFFA6C1EE),
          Color(0xFFFBC2EB),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );
}
