
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mphrms/Screens/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Set transparent status bar
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    // Navigate to login screen after delay
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const loginscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/animation/programming.gif', // make sure path is correct
          height: 250,
          width: 250,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:mphrms/Screens/loginscreen.dart';
// import 'package:mphrms/Screens/signupscreen.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
//   late final AnimationController _animationController;
//   late final Animation<double> _animation;
//   @override
//   void initState() {
//     super.initState();
//
//     // Initialize animation controller
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 8),
//     );
//
//     // Setup tween animation
//     _animation = Tween<double>(begin: 50, end: 300).animate(_animationController)
//       ..addListener(() => setState(() {}));
//
//     _animationController.forward();
//
//     // Set system UI style
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarIconBrightness: Brightness.light,
//     ));
//
//     // Delayed navigation
//     Future.delayed(Duration(seconds: 3), () async {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) =>  loginscreen()),
//       );
//     });
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.white,
//         child: Center(
//           child: Image.asset(
//             'assets/animation/programming.gif',
//             height: _animation.value,
//             width: _animation.value,
//             // fit: BoxFit.contain,
//           ),
//
//         ),
//       ),
//     );
//
//   }
// }

