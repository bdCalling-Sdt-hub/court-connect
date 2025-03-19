import 'package:courtconnect/core/utils/app_colors.dart';
import 'package:courtconnect/core/widgets/custom_container.dart';
import 'package:courtconnect/core/widgets/custom_text.dart';
import 'package:courtconnect/global/custom_assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSessionCard extends StatefulWidget {
  const CustomSessionCard(
      {super.key,
      required this.title,
      required this.subtitles,
      required this.onTap,
      required this.buttonLabel,this.image});

  final String title;
  final List<String> subtitles;
  final VoidCallback onTap;
  final String buttonLabel;
  final String? image;

  @override
  State<CustomSessionCard> createState() => _CustomSessionCardState();
}

class _CustomSessionCardState extends State<CustomSessionCard> {
  final List<String> icons = [
    Assets.icons.money.path,
    Assets.icons.location.path,
    Assets.icons.date.path
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10.h),
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding: EdgeInsets.all(6.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Assets.images.homeImage.image(),
            ),
            SizedBox(height: 10.h),
            CustomText(
                left: 10.w,
                text: widget.title,
                fontWeight: FontWeight.w500,
                fontsize: 14.sp),
            SizedBox(height: 10.h),
            for (int i = 0; i < widget.subtitles.length; i++)
              _cardTitleItem(icons[i], widget.subtitles[i]),
            Center(
              child: CustomContainer(
                onTap: widget.onTap,
                verticalMargin: 8.h,
                verticalPadding: 8.h,
                horizontalPadding: 24.w,
                radiusAll: 80.r,
                color: AppColors.primaryColor,
                child: CustomText(
                  text: widget.buttonLabel,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontsize: 12.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardTitleItem(String icon, String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0.h, left: 10.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          SizedBox(width: 6.w),
          CustomText(
            text: title,
            fontsize: 10.sp,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
