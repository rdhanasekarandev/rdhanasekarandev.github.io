import 'package:flutter/material.dart';
import 'package:karkai_web/Components/Components.dart';
import 'package:karkai_web/resources/app_colors.dart';
import 'package:karkai_web/resources/app_dimen.dart';
import 'package:karkai_web/resources/app_font.dart';

class Lanuch extends StatefulWidget {
  @override
  _LanuchState createState() => _LanuchState();
}

class _LanuchState extends State<Lanuch> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    List CourseList = [
      Text('Tenth Standard'),
      Text('Twelth Standard'),
      Text('Engineering'),
      Text('Arts'),
      Text('Commerce'),
      Text('Agriculture'),
      Text('Medical')
    ];
    List ExamList = [
      Text('Tenth'),
      Text('Twelth'),
      Text('NEET'),
      Text('JEE'),
      Text('TRB'),
      Text('TNPSC'),
      Text('UPSC')
    ];

    return FocusedView(
        child: Scaffold(
            appBar: width > 1200
                ? AppBar(
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 20, // Your Height
                          width: 20, // Your width
                        ),
                        Content(
                          text: 'Karkai',
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 8),
                          color: AppColors.BLACK,
                          fontSize: AppDimen.TEXT_H1_LARGE,
                          fontfamily: AppFont.LOGO_FONT,
                        ),
                        SizedBox(
                          height: 20, // Your Height
                          width: 20, // Your width
                          child: Text('dhana'),
                        ),
                        SearchField(
                          text: 'Search here',
                          height: 35,
                          fontSize: AppDimen.TEXT_SMALL,
                          hintColor: AppColors.GRAY,
                          color: AppColors.BLACK,
                          controller: TextEditingController(),
                          width: 400,
                          radius: 30,
                          suffixIcon: IconButton(
                            icon: Icon(Icons.search),
                            color: AppColors.GRAY,
                            iconSize: 20,
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                    actions: [
                      IconTextButton(
                        text: 'Upload',
                        width: 150,
                        margin: EdgeInsets.all(10),
                        txtColor: AppColors.BLACK_2,
                        iconColor: AppColors.BLACK_2,
                        onPressed: () {},
                        prefixIcon: Icons.upload_file,
                      ),
                      PrimaryButton(
                        text: '?',
                        width: 40,
                        bgColor: AppColors.WHITE,
                        onPressed: () {},
                        fontWeight: FontWeight.w600,
                        margin: EdgeInsets.all(10),
                        borderColor: AppColors.GRAY_2,
                        txtColor: Colors.black,
                        isShadow: true,
                        radius: 20,
                      ),
                      PrimaryButton(
                        text: 'Login',
                        width: 150,
                        onPressed: () {},
                        margin: EdgeInsets.all(10),
                        bgColor: AppColors.GRAY_2,
                        txtColor: Colors.white,
                        isShadow: true,
                        radius: 20,
                      ),
                      PrimaryButton(
                        text: 'Register',
                        width: 150,
                        onPressed: () {},
                        margin: EdgeInsets.all(10),
                        bgColor: AppColors.PRIMARY_COLOR_DARK,
                        txtColor: Colors.white,
                        isShadow: true,
                        radius: 20,
                      ),
                    ],
                  )
                : width > 800 && width < 1200
                    ? AppBar(
                        automaticallyImplyLeading: false,
                        centerTitle: true,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 20, // Your Height
                              width: 20, // Your width
                            ),
                            Content(
                              text: 'Karkai',
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(bottom: 8),
                              color: AppColors.BLACK,
                              fontSize: AppDimen.TEXT_H1_LARGE,
                              fontfamily: AppFont.LOGO_FONT,
                            ),
                          ],
                        ),
                        actions: [
                          IconTextButton(
                            text: 'Upload',
                            width: 150,
                            margin: EdgeInsets.all(10),
                            txtColor: AppColors.BLACK_2,
                            iconColor: AppColors.BLACK_2,
                            onPressed: () {},
                            prefixIcon: Icons.upload_file,
                          ),
                          PrimaryButton(
                            text: '?',
                            width: 40,
                            bgColor: AppColors.WHITE,
                            onPressed: () {},
                            fontWeight: FontWeight.w600,
                            margin: EdgeInsets.all(10),
                            borderColor: AppColors.GRAY_2,
                            txtColor: Colors.black,
                            isShadow: true,
                            radius: 20,
                          ),
                          PrimaryButton(
                            text: 'Login',
                            width: 150,
                            onPressed: () {},
                            margin: EdgeInsets.all(10),
                            bgColor: AppColors.GRAY_2,
                            txtColor: Colors.white,
                            isShadow: true,
                            radius: 20,
                          ),
                          PrimaryButton(
                            text: 'Register',
                            width: 150,
                            onPressed: () {},
                            margin: EdgeInsets.all(10),
                            bgColor: AppColors.PRIMARY_COLOR_DARK,
                            txtColor: Colors.white,
                            isShadow: true,
                            radius: 20,
                          ),
                        ],
                      )
                    : AppBar(
                        automaticallyImplyLeading: false,
                        centerTitle: true,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 20, // Your Height
                              width: 20, // Your width
                            ),
                            Content(
                              text: 'Karkai',
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(bottom: 8),
                              color: AppColors.BLACK,
                              fontSize: AppDimen.TEXT_H1_LARGE,
                              fontfamily: AppFont.LOGO_FONT,
                            ),
                          ],
                        ),
                        actions: [
                          IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: AppColors.PRIMARY_COLOR_DARK,
                              ),
                              onPressed: () {})
                        ],
                      ),
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ImageContainer(
                      padding: EdgeInsets.only(top: 100),
                      width: double.infinity,
                      height: width > 1200 ? 400 : 800,
                      asset: 'images/banner2.jpg',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Content(
                            alignment: Alignment.center,
                            text: 'Prepare With The Best',
                            fontSize: AppDimen.TEXT_H1_GIANT,
                            fontWeight: FontWeight.w400,
                            color: AppColors.WHITE,
                            letterSpacing: 1.2,
                            fontfamily: AppFont.FONT,
                          ),
                          SizedBox(
                            height: AppDimen.DIVIDER_LARGE,
                          ),
                          Container(
                            child: Flex(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              direction: width > 1200
                                  ? Axis.horizontal
                                  : Axis.vertical,
                              children: [
                                Container(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Content(
                                        text: '1000+',
                                        color: AppColors.ACCENT_COLOR_LIGHT,
                                        fontWeight: FontWeight.w300,
                                        fontfamily: AppFont.FONT,
                                        fontSize: AppDimen.TEXT_H1,
                                      ),
                                      Content(
                                        text: 'Materials',
                                        color: AppColors.WHITE,
                                        fontSize: AppDimen.TEXT_H3,
                                        fontWeight: FontWeight.w300,
                                        fontfamily: AppFont.FONT,
                                      ),
                                    ],
                                  ),
                                ),
                                Line(
                                  width: 1,
                                  height: 50,
                                  color: AppColors.GRAY_2,
                                  margin: EdgeInsets.only(left: 20, right: 20),
                                ),
                                Container(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Content(
                                        text: '10000+',
                                        color: AppColors.ACCENT_COLOR_LIGHT,
                                        fontWeight: FontWeight.w300,
                                        fontfamily: AppFont.FONT,
                                        fontSize: AppDimen.TEXT_H1,
                                      ),
                                      Content(
                                        text: 'Questions',
                                        color: AppColors.WHITE,
                                        fontSize: AppDimen.TEXT_H3,
                                        fontWeight: FontWeight.w300,
                                        fontfamily: AppFont.FONT,
                                      ),
                                    ],
                                  ),
                                ),
                                Line(
                                  width: 1,
                                  height: 50,
                                  color: AppColors.GRAY_2,
                                  margin: EdgeInsets.only(left: 20, right: 20),
                                ),
                                Container(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Content(
                                        text: '100+',
                                        color: AppColors.ACCENT_COLOR_LIGHT,
                                        fontWeight: FontWeight.w300,
                                        fontfamily: AppFont.FONT,
                                        fontSize: AppDimen.TEXT_H1,
                                      ),
                                      Content(
                                        text: 'Tests',
                                        color: AppColors.WHITE,
                                        fontSize: AppDimen.TEXT_H3,
                                        fontWeight: FontWeight.w300,
                                        fontfamily: AppFont.FONT,
                                      ),
                                    ],
                                  ),
                                ),
                                Line(
                                  width: 1,
                                  height: 50,
                                  color: AppColors.GRAY_2,
                                  margin: EdgeInsets.only(left: 20, right: 20),
                                ),
                                Container(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Content(
                                        text: '1000+',
                                        color: AppColors.ACCENT_COLOR_LIGHT,
                                        fontWeight: FontWeight.w300,
                                        fontfamily: AppFont.FONT,
                                        fontSize: AppDimen.TEXT_H1,
                                      ),
                                      Content(
                                        text: 'Students',
                                        color: AppColors.WHITE,
                                        fontSize: AppDimen.TEXT_H3,
                                        fontWeight: FontWeight.w300,
                                        fontfamily: AppFont.FONT,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Content(
                      text: 'Select your Course',
                      fontSize: AppDimen.TEXT_H1_LARGE,
                      color: AppColors.BLACK,
                      margin: EdgeInsets.only(top: 100),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 50),
                        child: SizedBox(
                          width: 1000,
                          child: DefaultTabController(
                            length: 2,
                            child: Column(
                              children: [
                                TabBar(
                                  indicatorWeight: 3,
                                  automaticIndicatorColorAdjustment: true,
                                  indicatorColor: AppColors.PRIMARY_COLOR_DARK,
                                  labelColor: AppColors.BLACK,
                                  labelStyle: TextStyle(
                                    fontFamily: AppFont.FONT,
                                    color: AppColors.BLACK,
                                  ),
                                  unselectedLabelColor: AppColors.GRAY_2,
                                  unselectedLabelStyle: TextStyle(
                                    fontFamily: AppFont.FONT,
                                    color: AppColors.GRAY_2,
                                  ),
                                  tabs: [
                                    Tab(
                                      text: 'Courses',
                                    ),
                                    Tab(text: 'Exams')
                                  ],
                                ),
                                SizedBox(
                                  height: 400,
                                  child: TabBarView(children: [
                                    Container(
                                        child: ListView.builder(
                                            itemCount: CourseList.length,
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                title: CourseList[index],
                                              );
                                            })),
                                    Container(
                                        child: ListView.builder(
                                            itemCount: ExamList.length,
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                title: ExamList[index],
                                              );
                                            }))
                                  ]),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            )));
  }
}
