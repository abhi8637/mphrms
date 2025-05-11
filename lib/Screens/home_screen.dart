import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dashboardscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top User Info
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 24,
                                backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('HEY JHONE DOE',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16, fontWeight: FontWeight.bold)),
                                  Text('MZ001234',
                                      style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            icon: const Icon(Icons.refresh, color: Colors.red),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardPage(),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Current Time
                      Center(
                        child: Column(
                          children: [
                            Text(
                              '09:15 AM',
                              style: GoogleFonts.poppins(
                                  fontSize: 36, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Feb 01, 2024 - Thursday',
                              style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Punch Button
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 40),
                          height: 227,
                          width: 227,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              colors: [Colors.white, Color(0xFFE0E0E0)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              )
                            ],
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                                  ),
                                  builder: (_) => const PunchInBottomSheet(),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.touch_app_outlined, size: 48, color: Colors.red),
                                  const SizedBox(height: 8),
                                  Text(
                                    'PUNCH IN',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 180),

                      // Punch Info Row
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildPunchInfo('09:08 AM', 'Punch In'),
                            _buildPunchInfo('06:05 PM', 'Punch Out'),
                            _buildPunchInfo('08:13', 'Total Hours'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPunchInfo(String time, String label) {
    return Column(
      children: [
        const Icon(Icons.access_time_filled, size: 32, color: Colors.redAccent),
        const SizedBox(height: 4),
        Text(
          time,
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildBottomIcon(IconData icon, String label, {bool selected = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white),
        if (label.isNotEmpty)
          Text(
            label,
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
          ),
      ],
    );
  }
}

class PunchInBottomSheet extends StatelessWidget {
  const PunchInBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Center(
        child: GestureDetector(
          onHorizontalDragEnd: (details) {
            // Simulate punch in logic
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Punched In!')),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: const Color(0xFFD32F2F),
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            // child: Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     const Icon(Icons.double_arrow, color: Colors.white),
            //     const SizedBox(width: 90),
            //     Text(
            //       'Swipe right to Punch in →',
            //       style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
            //     ),
            //   ],
            // ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.double_arrow,
                    color: Colors.black54,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Swipe right to Punch in →',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}



