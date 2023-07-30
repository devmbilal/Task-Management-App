part of '../home_screen.dart';

class _HomeUpperContainer extends StatelessWidget {
  const _HomeUpperContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 94,
      decoration: const BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        border: Border(
          left: BorderSide(color: AppColors.lightPurple),
          top: BorderSide(color: AppColors.lightPurple),
          right: BorderSide(color: AppColors.lightPurple),
          bottom: BorderSide(color: AppColors.lightPurple),
        ),
      ),
      child: Center(
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                  image: AssetImage(StaticAssets.profile), fit: BoxFit.fill),
              shape: OvalBorder(),
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 6.0),
            child: Text(
              'Hello Muhammad',
              style: AppText.s3,
            ),
          ),
          subtitle: const Text(
            'Keep Plan for 1 Day',
            style: AppText.s4,
          ),
          trailing: SvgPicture.asset(
            StaticAssets.search,
          ),
        ),
      ),
    );
  }
}
