import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../core/widgets/custom_text_field.dart';


class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController oldPassTEController = TextEditingController();
    TextEditingController passTEController = TextEditingController();
    TextEditingController rePassTEController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        // title: CustomTextOne(
        //   text: "Change Password",
        //   fontSize: 18.sp,
        //   color: AppColors.textColor,
        // ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // spacing: 15.h,
            children: [
              SizedBox(
                height: 50.h,
              ),
             // const AppLogo(),
              SizedBox(
                height: 15.h,
              ),
              CustomTextField(
                controller: oldPassTEController,
                hintText: "Enter  Old Password",
                labelText: "Enter  Old Password",
                isPassword: true,
              ),
              CustomTextField(
                controller: passTEController,
                hintText: "Enter New Password",
                labelText: "Enter New Password",
                isPassword: true,
              ),
              CustomTextField(
                controller: rePassTEController,
                hintText: "Re-Enter New Password",
                labelText: "Re-Enter New Password",
                isPassword: true,
              ),
              // Align(
              //     alignment: Alignment.centerRight,
              //     child: StyleTextButton(
              //         text: "Forgot Password?",
              //         onTap: () {
              //           Get.toNamed(AppRoutes.forgetScreen);
              //         },textDecoration: TextDecoration.underline)),
              SizedBox(
                height: 15.h,
              ),
              // CustomTextButton(
              //     text: "Change Password",
              //     onTap: () {
              //       Get.offAllNamed(AppRoutes.customNavBar);
              //     }),
            ],
          ),
        ),
      ),
    );
  }
}
