// // import 'package:flutter/material.dart';
// //
// // class Signupscreen extends StatefulWidget {
// //   const Signupscreen({super.key});
// //
// //   @override
// //   State<Signupscreen> createState() => _SignupscreenState();
// // }
// //
// // class _SignupscreenState extends State<Signupscreen> {
// //   final _formKey = GlobalKey<FormState>();
// //   bool _agreeToTerms = false;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         leading: const BackButton(),
// //         elevation: 0,
// //         backgroundColor: const Color(0xFFF9FAFB),
// //       ),
// //       backgroundColor: Color(0xFFF9FAFB),
// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.all(20),
// //         child: Form(
// //           key: _formKey,
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               const Text(
// //                 'Create Account',
// //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ),
// //               ),
// //               const SizedBox(height: 8),
// //               const Text(
// //                 'Please fill in your details to get started',
// //                 style: TextStyle(fontSize: 16, color: Colors.grey),
// //               ),
// //               const SizedBox(height: 24),
// //
// //               // First Name
// //               const Text('First Name'),
// //               const SizedBox(height: 6),
// //               TextFormField(
// //                 decoration: const InputDecoration(
// //                   hintText: 'Enter your first name',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //
// //               // Middle Name
// //               const Text('Middle Name'),
// //               const SizedBox(height: 6),
// //               TextFormField(
// //                 decoration: const InputDecoration(
// //                   hintText: 'Enter your middle name',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //
// //               // Last Name
// //               const Text('Last Name'),
// //               const SizedBox(height: 6),
// //               TextFormField(
// //                 decoration: const InputDecoration(
// //                   hintText: 'Enter your last name',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //
// //               // Email Address
// //               const Text('Email Address'),
// //               const SizedBox(height: 6),
// //               TextFormField(
// //                 decoration: const InputDecoration(
// //                   prefixIcon: Icon(Icons.email_outlined),
// //                   hintText: 'Enter your email',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //
// //               // Mobile Number
// //               const Text('Mobile Number'),
// //               const SizedBox(height: 6),
// //               TextFormField(
// //                 keyboardType: TextInputType.phone,
// //                 decoration: const InputDecoration(
// //                   prefixIcon: Icon(Icons.phone_outlined),
// //                   hintText: 'Enter your mobile number',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //
// //               // Address
// //               const Text('Address'),
// //               const SizedBox(height: 6),
// //               TextFormField(
// //                 keyboardType: TextInputType.phone,
// //                 decoration: const InputDecoration(
// //                   prefixIcon: Icon(Icons.phone_outlined),
// //                   hintText: 'Enter your address',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //
// //               // Terms checkbox
// //               Row(
// //                 children: [
// //                   Checkbox(
// //                     value: _agreeToTerms,
// //                     onChanged: (value) {
// //                       setState(() {
// //                         _agreeToTerms = value ?? false;
// //                       });
// //                     },
// //                   ),
// //                   const Expanded(
// //                     child: Text.rich(
// //                       TextSpan(
// //                         text: 'I agree to the ',
// //                         children: [
// //                           TextSpan(
// //                             text: 'Terms of Service',
// //                             style: TextStyle(color: Colors.blue),
// //                           ),
// //                           TextSpan(text: ' and '),
// //                           TextSpan(
// //                             text: 'Privacy Policy',
// //                             style: TextStyle(color: Colors.blue),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               const SizedBox(height: 16),
// //
// //               // Create Account button
// //               // SizedBox(
// //               //   width: double.infinity,
// //               //   child: ElevatedButton(
// //               //     onPressed: _agreeToTerms ? () {} : null,
// //               //     style: ElevatedButton.styleFrom(
// //               //       backgroundColor: Colors.blue, // Set to blue
// //               //       padding: const EdgeInsets.symmetric(vertical: 16),
// //               //       shape: RoundedRectangleBorder(
// //               //         borderRadius: BorderRadius.circular(8),
// //               //       ),
// //               //     ),
// //               //     child: const Text(
// //               //       'Create Account',
// //               //       style: TextStyle(fontSize: 16 , ),
// //               //     ),
// //               //   ),
// //               // ),
// //               SizedBox(
// //                 width: double.infinity,
// //                 // backgroundColor: const Color(0xFF3366FF),
// //                 // Vibrant blue
// //
// //                 child: ElevatedButton(
// //                   onPressed: _agreeToTerms ? () {} : null,
// //                   style: ElevatedButton.styleFrom(
// //                     // backgroundColor: const Color(0xFF3366FF), // Vibrant blue
// //                     backgroundColor: Colors.blueAccent,
// //                     padding: const EdgeInsets.symmetric(vertical: 16),
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                   ),
// //                   child: const Text(
// //                     'Create Account',
// //                     style: TextStyle(fontSize: 16, color: Colors.white), // Ensure white text
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(height: 20 ),
// //
// //               // Already have account
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Text("Already have an account? "),
// //                   TextButton(
// //                     onPressed: () {
// //                       // Navigate to login screen
// //                     },
// //                     child: const Text(
// //                       'Log in',
// //                       style: TextStyle(color: Colors.blue),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
//
//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class Signupscreen extends StatelessWidget {
//   const Signupscreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF9FAFB),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       const CircleAvatar(
//                         radius: 24,
//                         backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
//                       ),
//                       const SizedBox(width: 12),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('HEY JHONE DOE',
//                               style: GoogleFonts.poppins(
//                                   fontSize: 16, fontWeight: FontWeight.bold)),
//                           Text('MZ001234',
//                               style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey)),
//                         ],
//                       ),
//                     ],
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.refresh, color: Colors.red),
//                     onPressed: () {},
//                   )
//                 ],
//               ),
//               const SizedBox(height: 24),
//               Center(
//                 child: Column(
//                   children: [
//                     Text(
//                       '09:15 AM',
//                       style: GoogleFonts.poppins(
//                           fontSize: 36, fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       'Feb 01, 2024 - Thursday',
//                       style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 32),
//               Center(
//                 child: Container(
//                   height: 227,
//                   width: 227,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     gradient: const LinearGradient(
//                       colors: [Colors.white, Color(0xFFE0E0E0)],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.3),
//                         blurRadius: 20,
//                         offset: const Offset(0, 10),
//                       )
//                     ],
//                   ),
//                   child: Center(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const Icon(Icons.touch_app_outlined,
//                             size: 48, color: Colors.red),
//                         const SizedBox(height: 8),
//                         Text('PUNCH IN',
//                             style: GoogleFonts.poppins(
//                                 fontWeight: FontWeight.bold, fontSize: 14)),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 32),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildPunchInfo('09:08 AM', 'Punch In'),
//                   _buildPunchInfo('06:05 PM', 'Punch Out'),
//                   _buildPunchInfo('08:13', 'Total Hours'),
//                 ],
//               ),
//               const Spacer(),
//               Container(
//                 height: 70,
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFD32F2F),
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40),
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _buildBottomIcon(Icons.home, 'HOME', selected: true),
//                     _buildBottomIcon(Icons.dashboard_customize, ''),
//                     _buildBottomIcon(Icons.calendar_month, ''),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildPunchInfo(String time, String label) {
//     return Column(
//       children: [
//         const Icon(Icons.access_time_filled, size: 32, color: Colors.redAccent),
//         const SizedBox(height: 4),
//         Text(
//           time,
//           style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
//         ),
//         Text(
//           label,
//           style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildBottomIcon(IconData icon, String label, {bool selected = false}) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon, color: Colors.white),
//         if (label.isNotEmpty)
//           Text(
//             label,
//             style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
//           ),
//       ],
//     );
//   }
// }
//
