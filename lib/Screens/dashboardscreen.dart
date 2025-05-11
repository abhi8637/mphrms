import 'package:flutter/material.dart';
import 'package:mphrms/Screens/attendancehistoryscreen.dart';
import 'package:mphrms/Screens/home_screen.dart';
import 'leaverequestpagescreen.dart'; // Make sure this screen exists

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Map<String, dynamic>> dashboardItems = [
    {'title': 'Leave Request', 'icon': Icons.calendar_month},
    {'title': 'Leave Request Details', 'icon': Icons.assignment},
    {'title': 'Leave Approval', 'icon': Icons.fact_check},
    {'title': 'Attendance Regularization', 'icon': Icons.edit_calendar},
    {'title': 'Regularization Approval', 'icon': Icons.approval},
    {'title': 'Regularization Listing', 'icon': Icons.list_alt},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              SizedBox(height: 16),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: dashboardItems.map((item) => _buildGridItem(item)).toList(),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Lock feature placeholder
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock, color: Colors.red, size: 20),
                      SizedBox(width: 6),
                      Text("DEVICE LOCK", style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AttendanceHistoryPage()),
            );
          },
          child: Row(
            children: [
              Icon(Icons.power_settings_new, color: Colors.red),
              SizedBox(width: 4),
              Text("LOGOUT", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGridItem(Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () {
        // Handle navigation based on title
        if (item['title'] == 'Leave Request') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LeaveRequestPage()),
          );
        }

        // TODO: Add more navigation conditions for other items if needed
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.red.shade50,
              child: Icon(item['icon'], size: 28, color: Colors.red),
            ),
            SizedBox(height: 10),
            Text(
              item['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
