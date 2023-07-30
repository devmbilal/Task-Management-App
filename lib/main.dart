import 'package:flutter/material.dart';
import 'package:task_management_app/screens/home/home_screen.dart';
import 'package:task_management_app/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_app/utils/assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myIndex = 0;
  List<Widget> views = [
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: SafeArea(
        child: Scaffold(
          body: views[myIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: myIndex,
            backgroundColor: AppColors.purple,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(StaticAssets.dataset),
                label: 'Tasks',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(StaticAssets.task),
                label: 'Completed',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
