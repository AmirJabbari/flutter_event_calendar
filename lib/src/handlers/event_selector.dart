import 'package:flutter_event_calendar/flutter_event_calendar.dart';
import 'package:flutter_event_calendar/src/handlers/event_calendar.dart';

class EventSelector {
  updateEvents() {
    EventCalendar.selectedEvents = [];

    var i = 0;
    for (var item in EventCalendar.events) {
      var eventDateTimeParts = item.dateTime;
      var calendarDateTimeParts = EventCalendar.dateTime;
      if (eventDateTimeParts.isDateEqual(calendarDateTimeParts)) {
        item.listIndex = i;
        EventCalendar.selectedEvents.add(item);
      }

      i++;
    }

    return EventCalendar.selectedEvents;
  }

  List<Event> getEventsByDayMonthYear(EventDateTime date) {
    EventCalendar.selectedEvents = [];
    var i = 0;
    for (var item in EventCalendar.events) {
      var eventDateTimeParts = item.dateTime;
      if (eventDateTimeParts.isDateEqual(date)) {
        item.listIndex = i;
        EventCalendar.selectedEvents.add(item);
      }
      i++;
    }

    return EventCalendar.selectedEvents;
  }
}
