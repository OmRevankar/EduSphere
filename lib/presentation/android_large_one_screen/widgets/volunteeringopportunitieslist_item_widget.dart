import '../models/volunteeringopportunitieslist_item_model.dart';
import 'package:edusphere/core/app_export.dart';
import 'package:edusphere/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VolunteeringopportunitieslistItemWidget extends StatelessWidget {
  VolunteeringopportunitieslistItemWidget(
    this.volunteeringopportunitieslistItemModelObj, {
    Key? key,
    this.onTapReadMoreButton1,
  }) : super(
          key: key,
        );

  VolunteeringopportunitieslistItemModel
      volunteeringopportunitieslistItemModelObj;

  VoidCallback? onTapReadMoreButton1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            volunteeringopportunitieslistItemModelObj.opportunityText!,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 7.v),
          Text(
            volunteeringopportunitieslistItemModelObj.descriptionText!,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 8.v),
          CustomElevatedButton(
            width: 169.h,
            text: "lbl_read_more".tr,
            onPressed: () {
              onTapReadMoreButton1!.call();
            },
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
