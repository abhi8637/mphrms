import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

class AttendanceHistoryPage extends StatefulWidget {
  @override
  _AttendanceHistoryPageState createState() => _AttendanceHistoryPageState();
}

class _AttendanceHistoryPageState extends State<AttendanceHistoryPage> {
  DateTime _focusedDay = DateTime(2024, 12, 6);
  DateTime? _selectedDay;

  final List<Map<String, dynamic>> attendanceData = [
    {"date": "06", "day": "TUE", "color": Colors.green},
    {"date": "07", "day": "TUE", "color": Colors.orange},
    {"date": "08", "day": "TUE", "color": Colors.red},
    {"date": "09", "day": "TUE", "color": Colors.green},
    {"date": "06", "day": "TUE", "color": Colors.green},
    {"date": "07", "day": "TUE", "color": Colors.orange},
    {"date": "08", "day": "TUE", "color": Colors.red},
    {"date": "09", "day": "TUE", "color": Colors.green},
  ];

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Attendance History",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),

              // Calendar section commented out
              /*
              _buildCalendarSection(),
              SizedBox(height: 20),
              */

              Expanded(
                child: ListView(
                  children: attendanceData
                      .map((data) => _buildAttendanceCard(data))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*
  Widget _buildCalendarSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      child: TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        calendarStyle: CalendarStyle(
          selectedDecoration: BoxDecoration(
            color: Colors.redAccent,
            shape: BoxShape.circle,
          ),
          todayDecoration: BoxDecoration(
            color: Colors.red.shade100,
            shape: BoxShape.circle,
          ),
        ),
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(color: Colors.black),
          weekendStyle: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
  */

  Widget _buildAttendanceCard(Map<String, dynamic> data) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: data['color'],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data['date'], style: TextStyle(color: Colors.white, fontSize: 16)),
                  Text(data['day'], style: TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("09:08 AM", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Punch In"),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("06:05 PM", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Punch Out"),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("08:13", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Total Hours"),
            ],
          ),
        ],
      ),
    );
  }
}
