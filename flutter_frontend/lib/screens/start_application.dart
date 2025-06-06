// import 'package:ai_crop_disease_system/screens/login.dart';
// import 'package:flutter/material.dart';
// // import 'multilanguage_support.dart';

// class StartApplication extends StatefulWidget {
//   @override
//   _StartApplicationState createState() => _StartApplicationState();
// }

// class _StartApplicationState extends State<StartApplication>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//   late Animation<Color?> _backgroundColorAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Navigate to the multilingual support screen after 5 seconds with a smooth transition
//     Future.delayed(Duration(seconds: 7), () {
//       Navigator.pushReplacement(
//         context,
//         PageRouteBuilder(
//           pageBuilder: (context, animation, secondaryAnimation) =>
//               LoginScreen(),
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             const begin = Offset(1.0, 0.0); // Slide in from the right
//             const end = Offset.zero;
//             const curve = Curves.easeInOut;

//             final tween = Tween(begin: begin, end: end);
//             final curvedAnimation = CurvedAnimation(
//               parent: animation,
//               curve: curve,
//             );

//             final offsetAnimation = tween.animate(curvedAnimation);

//             return SlideTransition(
//               position: offsetAnimation,
//               child: child,
//             );
//           },
//         ),
//       );
//     });

//     // Animation for the logo
//     _controller = AnimationController(
//       duration: Duration(seconds: 6),
//       vsync: this,
//     )..repeat(reverse: true);

//     _animation = Tween<double>(begin: 0.8, end: 1.2).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     ));

//     // Background color animation
//     _backgroundColorAnimation = ColorTween(
//       begin: Colors.white,
//       end: Colors.green[100],
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.linear,
//     ));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnimatedBuilder(
//         animation: _controller,
//         builder: (context, child) {
//           return Container(
//             color: _backgroundColorAnimation.value, // Animated background color
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Welcome Text
//                   AnimatedOpacity(
//                     opacity: 1.0,
//                     duration: Duration(seconds: 1),
//                     child: Text(
//                       'Welcome to Agripredict',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.green[700],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),

//                   // Logo with animation
//                   ScaleTransition(
//                     scale: _animation,
//                     child: Image.network(
//                       'https://www.pngplay.com/wp-content/uploads/6/Agriculture-Logo-Clipart-PNG.png',
//                       height: 100,
//                       width: 100,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//working
import 'package:ai_crop_disease_system/screens/login.dart';
import 'package:flutter/material.dart';
// import 'multilanguage_support.dart';

class StartApplication extends StatefulWidget {
  @override
  _StartApplicationState createState() => _StartApplicationState();
}

class _StartApplicationState extends State<StartApplication>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<Color?> _backgroundColorAnimation;

  @override
  void initState() {
    super.initState();

    // Navigate to the login screen after 7 seconds with a smooth transition
    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0); // Slide in from the right
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );

            final offsetAnimation = tween.animate(curvedAnimation);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        ),
      );
    });

    // Animation for the logo
    _controller = AnimationController(
      duration: Duration(seconds: 6),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.8, end: 1.2).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Background color animation
    _backgroundColorAnimation = ColorTween(
      begin: Colors.white,
      end: Colors.green[100],
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            color: _backgroundColorAnimation.value, // Animated background color
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Welcome Text
                  AnimatedOpacity(
                    opacity: 1.0,
                    duration: Duration(seconds: 1),
                    child: Text(
                      'Welcome to AgroAI',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Logo GIF with animation
                  ScaleTransition(
                    scale: _animation,
                    child: Image.asset(
                      'assets/Earth.gif', // Using the GIF from assets
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// import 'package:ai_crop_disease_system/screens/login.dart';
// import 'package:flutter/material.dart';

// class StartApplication extends StatefulWidget {
//   final void Function(Locale locale)?
//       onLocaleChange; // Added callback to change locale

//   StartApplication(
//       {this.onLocaleChange}); // Accept onLocaleChange in the constructor

//   @override
//   _StartApplicationState createState() => _StartApplicationState();
// }

// class _StartApplicationState extends State<StartApplication>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//   late Animation<Color?> _backgroundColorAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Navigate to the login screen after 7 seconds with a smooth transition
//     Future.delayed(Duration(seconds: 7), () {
//       Navigator.pushReplacement(
//         context,
//         PageRouteBuilder(
//           pageBuilder: (context, animation, secondaryAnimation) =>
//               LoginScreen(),
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             const begin = Offset(1.0, 0.0); // Slide in from the right
//             const end = Offset.zero;
//             const curve = Curves.easeInOut;

//             final tween = Tween(begin: begin, end: end);
//             final curvedAnimation = CurvedAnimation(
//               parent: animation,
//               curve: curve,
//             );

//             final offsetAnimation = tween.animate(curvedAnimation);

//             return SlideTransition(
//               position: offsetAnimation,
//               child: child,
//             );
//           },
//         ),
//       );
//     });

//     // Animation for the logo
//     _controller = AnimationController(
//       duration: Duration(seconds: 6),
//       vsync: this,
//     )..repeat(reverse: true);

//     _animation = Tween<double>(begin: 0.8, end: 1.2).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     ));

//     // Background color animation
//     _backgroundColorAnimation = ColorTween(
//       begin: Colors.white,
//       end: Colors.green[100],
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.linear,
//     ));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnimatedBuilder(
//         animation: _controller,
//         builder: (context, child) {
//           return Container(
//             color: _backgroundColorAnimation.value, // Animated background color
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Welcome Text
//                   AnimatedOpacity(
//                     opacity: 1.0,
//                     duration: Duration(seconds: 1),
//                     child: Text(
//                       'Welcome to AgroAI',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.green[700],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),

//                   // Logo GIF with animation
//                   ScaleTransition(
//                     scale: _animation,
//                     child: Image.asset(
//                       'assets/Earth.gif', // Using the GIF from assets
//                       height: 100,
//                       width: 100,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   SizedBox(height: 30),

//                   // Dropdown to change language (optional addition for multi-language support)
//                   if (widget.onLocaleChange != null) ...[
//                     SizedBox(height: 20),
//                     DropdownButton<Locale>(
//                       hint: Text('Select Language'),
//                       items: [
//                         DropdownMenuItem(
//                           child: Text('English'),
//                           value: Locale('en'),
//                         ),
//                         DropdownMenuItem(
//                           child: Text('Hindi'),
//                           value: Locale('hi'),
//                         ),
//                         // Add more languages as needed
//                       ],
//                       onChanged: (Locale? newLocale) {
//                         if (newLocale != null) {
//                           widget.onLocaleChange!(newLocale);
//                         }
//                       },
//                     ),
//                   ]
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
