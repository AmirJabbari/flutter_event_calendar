import 'package:flutter/material.dart';
import 'package:flutter_event_calendar/flutter_event_calendar.dart';
import 'package:scoped_model/scoped_model.dart';

class CalendarOptions extends Model {
  bool toggleViewType;
  ViewType viewType;
  String font;
  Color calendarBackgroundColor;

  CalendarOptions(
      {this.toggleViewType = false,
      this.viewType = ViewType.Monthly,
      this.font = '',
      this.calendarBackgroundColor = Colors.white});

  static CalendarOptions of(BuildContext context) =>
      ScopedModel.of<CalendarOptions>(context);
}
