import 'package:courtconnect/core/app_routes/app_routes.dart';
import 'package:courtconnect/helpers/toast_message_helper.dart';
import 'package:courtconnect/services/api_client.dart';
import 'package:courtconnect/services/api_urls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordController extends GetxController {
  final  passController = TextEditingController();
  final  confirmPassController = TextEditingController();

  final RxBool isLoading = false.obs;

  Future<void> resetPassword(BuildContext context) async {
    isLoading.value = true;

    var bodyParams = {
      "password": passController.text,
    };

    try {
      final response = await ApiClient.postData(
        ApiUrls.resetPassword,
        bodyParams,
      );

      final responseBody = response.body;
      if (response.statusCode == 200 && responseBody['success'] == true) {
          context.pushReplacementNamed(AppRoutes.loginScreen);
          ToastMessageHelper.showToastMessage(responseBody['message'] ?? "change your password successfully");
      } else {
        ToastMessageHelper.showToastMessage(responseBody['message'] ?? "failed.");
      }
    } catch (e) {
      ToastMessageHelper.showToastMessage("Error: $e");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void dispose() {
    passController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }
}
