import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_app/theme/spaces.dart';
import '../../../../theme/colors.dart';
import '../../../../theme/typography.dart';
import '../../../../utils/assets.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          showDialog(context: context, builder: ((context) => Column())),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: ShapeDecoration(
          color: AppColors.lightPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(StaticAssets.add),
              Spaces.x,
              const Text(
                'Create new Task',
                style: AppText.s2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
