
import 'package:flutter/material.dart';
import 'package:timetable_view/timetable_view.dart';
import 'package:uni_app/screens/screens_base.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      title: "Time Table",
      child: Column(
        children: [

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 14.0,
              ),
              child: TimetableView(
                timetableStyle: const TimetableStyle(
                  laneWidth: 80.0,
                  laneHeight: 60.0,
                  endHour: 19,
                  startHour: 8,
                  showTimeAsAMPM: true,
                  timeItemHeight: 60.0,
                ),
                laneEventsList: [
                  LaneEvents(
                      lane: Lane(name: 'Saturday', laneIndex: 0),
                      events: [
                        _getItem(8, 9, "Database"),
                        _getItem(9, 10, "Pashto"),
                        _getItem(10, 11, "English"),
                      ]
                  ),
                  LaneEvents(
                      lane: Lane(
                        name: 'Sunday', laneIndex: 0,
                      ),
                      events: [
                        _getItem(9, 10, "Math"),
                        _getItem(11, 12, "History"),
                        _getItem(14, 15, "Database"),
                      ]
                  ),
                  LaneEvents(
                      lane: Lane(
                        name: 'Monday', laneIndex: 0,
                      ),
                      events: [
                        _getItem(8, 9, "Programming"),
                        _getItem(11, 12, "Islamic"),
                        _getItem(12, 13, "History"),
                      ]
                  ),
                  LaneEvents(
                      lane: Lane(
                        name: 'Tuesday', laneIndex: 0,
                      ),
                      events: [
                        _getItem(8, 9, "Database"),
                        _getItem(9, 10, "Pashto"),
                        _getItem(10, 11, "English"),
                      ]
                  ),
                  LaneEvents(
                      lane: Lane(
                        name: 'Wednesday', laneIndex: 0,
                      ),
                      events: [
                        _getItem(8, 9, "Programming"),
                        _getItem(11, 12, "Islamic"),
                        _getItem(12, 13, "History"),
                      ]
                  ),
                  LaneEvents(
                      lane: Lane(
                        name: 'Thursday', laneIndex: 0,
                      ),
                      events: [
                        _getItem(8, 9, "Programming"),
                        _getItem(11, 12, "Islamic"),
                        _getItem(12, 13, "History"),
                      ]
                  ),
                ],
                onEventTap: (TableEvent event) {

                },
                onEmptySlotTap: (int laneIndex, TableEventTime start, TableEventTime end) {

                },
              ),
            ),
          ),



        ],
      ),
    );
  }


  TableEvent _getItem(int start, int end, String text){
    return TableEvent(
      title: text,
      textStyle: const TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
      ),
      startTime: TableEventTime(hour: start, minute: 0),
      endTime: TableEventTime(hour: end, minute: 0),
      eventId: 1,
      laneIndex: 1,
    );
  }
}
