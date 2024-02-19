// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'volunteeringopportunitieslist_item_model.dart';

/// This class defines the variables used in the [android_large_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeOneModel extends Equatable {
  AndroidLargeOneModel(
      {this.volunteeringopportunitieslistItemList = const []}) {}

  List<VolunteeringopportunitieslistItemModel>
      volunteeringopportunitieslistItemList;

  AndroidLargeOneModel copyWith(
      {List<VolunteeringopportunitieslistItemModel>?
          volunteeringopportunitieslistItemList}) {
    return AndroidLargeOneModel(
      volunteeringopportunitieslistItemList:
          volunteeringopportunitieslistItemList ??
              this.volunteeringopportunitieslistItemList,
    );
  }

  @override
  List<Object?> get props => [volunteeringopportunitieslistItemList];
}
