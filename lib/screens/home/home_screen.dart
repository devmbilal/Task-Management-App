import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_app/screens/home/widgets/task/create_task.dart';
import '../../../theme/colors.dart';
import '../../../theme/typography.dart';
import '../../../utils/assets.dart';
part 'widgets/_upper_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _HomeUpperContainer(),
        CreateTask(),
      ],
    );
  }
}
