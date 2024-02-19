import '../android_large_one_screen/widgets/volunteeringopportunitieslist_item_widget.dart';
import 'bloc/android_large_one_bloc.dart';
import 'models/android_large_one_model.dart';
import 'models/volunteeringopportunitieslist_item_model.dart';
import 'package:edusphere/core/app_export.dart';
import 'package:edusphere/widgets/app_bar/appbar_title.dart';
import 'package:edusphere/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:edusphere/widgets/app_bar/custom_app_bar.dart';
import 'package:edusphere/widgets/custom_elevated_button.dart';
import 'package:edusphere/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeOneBloc>(
        create: (context) => AndroidLargeOneBloc(AndroidLargeOneState(
            androidLargeOneModelObj: AndroidLargeOneModel()))
          ..add(AndroidLargeOneInitialEvent()),
        child: AndroidLargeOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 18.v),
                child: Column(children: [
                  Text("msg_volunteering_opportunities".tr,
                      style: CustomTextStyles.titleLargeBlack900),
                  SizedBox(height: 37.v),
                  _buildVolunteeringOpportunitiesList(context),
                  SizedBox(height: 36.v),
                  _buildSurveyButton(context),
                  SizedBox(height: 15.v),
                  CustomIconButton(
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      onTap: () {
                        onTapBtnIconButton(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEllipse2)),
                  SizedBox(height: 6.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 20.h, right: 212.h),
              child: Row(children: [
                AppbarTitle(
                    text: "lbl_user001".tr,
                    margin: EdgeInsets.only(bottom: 2.v)),
                AppbarTitleCircleimage(
                    imagePath: ImageConstant.imgEllipse1,
                    margin: EdgeInsets.only(left: 15.h))
              ])),
          SizedBox(height: 14.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildVolunteeringOpportunitiesList(BuildContext context) {
    return BlocSelector<AndroidLargeOneBloc, AndroidLargeOneState,
            AndroidLargeOneModel?>(
        selector: (state) => state.androidLargeOneModelObj,
        builder: (context, androidLargeOneModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 33.v);
              },
              itemCount: androidLargeOneModelObj
                      ?.volunteeringopportunitieslistItemList.length ??
                  0,
              itemBuilder: (context, index) {
                VolunteeringopportunitieslistItemModel model =
                    androidLargeOneModelObj
                            ?.volunteeringopportunitieslistItemList[index] ??
                        VolunteeringopportunitieslistItemModel();
                return VolunteeringopportunitieslistItemWidget(model,
                    onTapReadMoreButton1: () {
                  onTapReadMoreButton1(context);
                });
              });
        });
  }

  /// Section Widget
  Widget _buildSurveyButton(BuildContext context) {
    return CustomElevatedButton(
        height: 50.v, width: 196.h, text: "lbl_survey".tr);
  }

  /// Navigates to the androidLargeTwoScreen when the action is triggered.
  onTapReadMoreButton1(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.androidLargeTwoScreen);
  }

  /// Navigates to the androidLargeThreeScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeThreeScreen,
    );
  }
}
