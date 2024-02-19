import 'bloc/android_large_three_bloc.dart';
import 'models/android_large_three_model.dart';
import 'package:edusphere/core/app_export.dart';
import 'package:edusphere/widgets/app_bar/appbar_title.dart';
import 'package:edusphere/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:edusphere/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AndroidLargeThreeScreen extends StatelessWidget {
  const AndroidLargeThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeThreeBloc>(
      create: (context) => AndroidLargeThreeBloc(AndroidLargeThreeState(
        androidLargeThreeModelObj: AndroidLargeThreeModel(),
      ))
        ..add(AndroidLargeThreeInitialEvent()),
      child: AndroidLargeThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeThreeBloc, AndroidLargeThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 9.v,
              ),
              child: Column(
                children: [
                  Text(
                    "msg_start_the_survey".tr,
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                  SizedBox(height: 14.v),
                  _buildSurveyForm(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              right: 207.h,
            ),
            child: Row(
              children: [
                AppbarTitle(
                  text: "lbl_user001".tr,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                AppbarTitleCircleimage(
                  imagePath: ImageConstant.imgEllipse1,
                  margin: EdgeInsets.only(left: 15.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(),
            ),
          ),
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSurveyForm(BuildContext context) {
    return Container(
      width: 314.h,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillCyan,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_name_of_child".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 88.v),
          Text(
            "msg_education_details".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 88.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_location".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 88.v),
        ],
      ),
    );
  }
}
