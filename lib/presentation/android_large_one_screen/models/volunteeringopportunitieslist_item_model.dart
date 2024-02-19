import '../../../core/app_export.dart';

/// This class is used in the [volunteeringopportunitieslist_item_widget] screen.
class VolunteeringopportunitieslistItemModel {
  VolunteeringopportunitieslistItemModel({
    this.opportunityText,
    this.descriptionText,
    this.id,
  }) {
    opportunityText = opportunityText ?? "OPPORTUNITY 1";
    descriptionText = descriptionText ?? "Description Lorem Ipsum";
    id = id ?? "";
  }

  String? opportunityText;

  String? descriptionText;

  String? id;
}
