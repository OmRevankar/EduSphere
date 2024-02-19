import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/volunteeringopportunitieslist_item_model.dart';
import 'package:edusphere/presentation/android_large_one_screen/models/android_large_one_model.dart';
part 'android_large_one_event.dart';
part 'android_large_one_state.dart';

/// A bloc that manages the state of a AndroidLargeOne according to the event that is dispatched to it.
class AndroidLargeOneBloc
    extends Bloc<AndroidLargeOneEvent, AndroidLargeOneState> {
  AndroidLargeOneBloc(AndroidLargeOneState initialState) : super(initialState) {
    on<AndroidLargeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeOneInitialEvent event,
    Emitter<AndroidLargeOneState> emit,
  ) async {
    emit(state.copyWith(
        androidLargeOneModelObj: state.androidLargeOneModelObj?.copyWith(
            volunteeringopportunitieslistItemList:
                fillVolunteeringopportunitieslistItemList())));
  }

  List<VolunteeringopportunitieslistItemModel>
      fillVolunteeringopportunitieslistItemList() {
    return [
      VolunteeringopportunitieslistItemModel(
          opportunityText: "OPPORTUNITY 1",
          descriptionText: "Description Lorem Ipsum"),
      VolunteeringopportunitieslistItemModel(
          opportunityText: "OPPORTUNITY 2",
          descriptionText: "Description Lorem Ipsum"),
      VolunteeringopportunitieslistItemModel(
          opportunityText: "OPPORTUNITY 3",
          descriptionText: "Description Lorem Ipsum")
    ];
  }
}
