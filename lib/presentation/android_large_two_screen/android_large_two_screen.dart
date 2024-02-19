import 'bloc/android_large_two_bloc.dart';
import 'models/android_large_two_model.dart';
import 'package:edusphere/core/app_export.dart';
import 'package:edusphere/widgets/app_bar/appbar_title.dart';
import 'package:edusphere/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:edusphere/widgets/app_bar/custom_app_bar.dart';
import 'package:edusphere/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwoScreen extends StatelessWidget {
  const AndroidLargeTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwoBloc>(
      create: (context) => AndroidLargeTwoBloc(AndroidLargeTwoState(
        androidLargeTwoModelObj: AndroidLargeTwoModel(),
      ))
        ..add(AndroidLargeTwoInitialEvent()),
      child: AndroidLargeTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeTwoBloc, AndroidLargeTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: 307.h,
              margin: EdgeInsets.fromLTRB(26.h, 37.v, 26.h, 5.v),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillCyan,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_oportunity_1".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Container(
                    width: 241.h,
                    margin: EdgeInsets.only(right: 36.h),
                    child: Text(
                      "msg_description_these".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  Container(
                    width: 257.h,
                    margin: EdgeInsets.only(right: 20.h),
                    child: Text(
                      "msg_location_ram_maruti".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 27.v),
                  SizedBox(
                    width: 127.h,
                    child: Text(
                      "msg_credit_points_1000".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                    height: 48.v,
                    text: "lbl_apply_now".tr,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      right: 28.h,
                    ),
                    buttonTextStyle: theme.textTheme.headlineSmall!,
                    alignment: Alignment.center,
                  ),
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
              left: 26.h,
              right: 206.h,
            ),
            child: Row(
              children: [
                AppbarTitle(
                  text: "lbl_user001".tr,
                  margin: EdgeInsets.only(top: 2.v),
                ),
                AppbarTitleCircleimage(
                  imagePath: ImageConstant.imgEllipse1,
                  margin: EdgeInsets.only(left: 15.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
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
}
