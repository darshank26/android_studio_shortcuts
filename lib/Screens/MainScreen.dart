import 'dart:io';

import 'package:android_studio_shortcuts/Screens/WindowsLinux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:launch_review/launch_review.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/constants.dart';
import 'Mac.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 32, fontWeight: FontWeight.w600);
  final List<Widget> _widgetOptions = <Widget>[
    CustomeListWindow(),
    CustomeListMac(),
    CustomeListMore()
  ];




  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Android Studio Shortcuts",), centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 28,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.windows,
                  text: 'Windows / Linux',
                ),
                GButton(
                  icon: LineIcons.apple,
                  text: 'Mac',
                ),
                GButton(
                  icon: LineIcons.verticalEllipsis,
                  text: 'More',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),

    );
  }


  static  CustomeListWindow(){
    return ListView(
      padding: const EdgeInsets.all(8),
      children:  <Widget>[
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: const Text('General',style: TextStyle(fontSize: 22.0,color: Colors.black87),
          ),
            onTap: (){
              Get.to(WindowLinux(value:"General"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Debugging',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
            onTap: () {
              Get.to(WindowLinux(value:"Debugging"));

            },
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Search & Replace',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(WindowLinux(value:"Search & Replace"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Editing',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(WindowLinux(value:"Editing"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Refactoring',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(WindowLinux(value:"Refactoring"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Navigation',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(WindowLinux(value:"Navigation"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Compile & Run',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(WindowLinux(value:"Compile & Run"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Others',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(WindowLinux(value:"Others"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black38,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black12
        ),

      ],
    );
  }

  static  CustomeListMac(){
    return ListView(
      padding: const EdgeInsets.all(8),
      children:  <Widget>[
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: const Text('General',style: TextStyle(fontSize: 22.0,color: Colors.black87),
          ),
            onTap: (){
              Get.to(Mac(value:"General"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Debugging',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
            onTap: () {
              Get.to(Mac(value:"Debugging"));

            },
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Search & Replace',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(Mac(value:"Search & Replace"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Editing',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(Mac(value:"Editing"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Refactoring',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(Mac(value:"Refactoring"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Navigation',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(Mac(value:"Navigation"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Compile & Run',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(Mac(value:"Compile & Run"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: Text('Others',style: TextStyle(fontSize: 22.0,color: Colors.black87),),
            onTap: (){
              Get.to(Mac(value:"Others"));
            },
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black38,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black12
        ),

      ],
    );
  }

  static  CustomeListMore() {
    const String toLaunchPP = 'http://darshankomu.com/apps/Marathi%20Aarti%20Sangrah/privacypolicy.html';
    const String toLaunchTC = 'http://darshankomu.com/apps/Marathi%20Aarti%20Sangrah/privacypolicy.html';
    const String toLaunch = "https://play.google.com/store/apps/developer?id=Darshan+Komu";

    return ListView(
      padding: const EdgeInsets.all(8),
      children:  <Widget>[
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: const Text('About App',style: TextStyle(fontSize: 22.0,color: Colors.black87),
          ),
            onTap: (){

            },
            leading: Icon(LineIcons.user,color: Colors.black),
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: const Text('More App',style: TextStyle(fontSize: 22.0,color: Colors.black87),
          ),
            onTap: () async{
              if (!await launch(
                toLaunch,
                forceSafariVC: false,
                forceWebView: false,
                headers: <String, String>{'my_header_key': 'my_header_value'},
              )) {
                throw 'Could not launch $toLaunchPP';
              }
            },
            leading: Icon(LineIcons.googlePlay,color: Colors.black,),
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: const Text('Rate Us',style: TextStyle(fontSize: 22.0,color: Colors.black87),
          ),
            onTap: (){
              LaunchReview.launch(
                androidAppId: androidAppIdValue,
                iOSAppId: iOSAppIdValue,);
            },
            leading: Icon(LineIcons.star,color: Colors.black,),
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: const Text('Review',style: TextStyle(fontSize: 22.0,color: Colors.black87),
          ),
            onTap: (){
              LaunchReview.launch(
                androidAppId: androidAppIdValue,
                iOSAppId: iOSAppIdValue,);
            },
            leading: Icon(LineIcons.comment,color: Colors.black,),
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),

        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: const Text('Share App',style: TextStyle(fontSize: 22.0,color: Colors.black87),
          ),
            onTap: (){
              if (Platform.isAndroid) {
                // Android-specific code
                Share.share(
                    androidShareText + '\n' + androidAppShareLink);
              } else if (Platform.isIOS) {
                // iOS-specific code
                // Share.share(iosShareText + '\n' + iosAppShareLink);
              }
            },
            leading: Icon(LineIcons.share,color: Colors.black,),
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: const Text('Privacy Policy',style: TextStyle(fontSize: 22.0,color: Colors.black87),
          ),
            onTap: () async{
              if (!await launch(
              toLaunchPP,
              forceSafariVC: false,
              forceWebView: false,
              headers: <String, String>{'my_header_key': 'my_header_value'},
              )) {
              throw 'Could not launch $toLaunchPP';
              }
              },
            leading: Icon(LineIcons.certificate,color: Colors.black,),
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: const Text('Terms & Condition',style: TextStyle(fontSize: 22.0,color: Colors.black87),
          ),
            onTap: () async{
              if (!await launch(
                toLaunchTC,
                forceSafariVC: false,
                forceWebView: false,
                headers: <String, String>{'my_header_key': 'my_header_value'},
              )) {
                throw 'Could not launch $toLaunchTC';
              }
            },
            leading: Icon(LineIcons.file,color: Colors.black,),
            trailing: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black54,
              size: 28,
            ),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: ListTile( title: const Text('App Version',style: TextStyle(fontSize: 22.0,color: Colors.black87),
          ),
            onTap: (){

            },
            leading: Icon(LineIcons.mobilePhone,color: Colors.black,),
            trailing: Text("v1.0",style: TextStyle(fontSize: 20.0,color: Colors.black87)),
          ),
        ),
        Divider(
            color: Colors.black38
        ),
      ],
    );
  }


}
