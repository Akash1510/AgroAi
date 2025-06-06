// import 'package:flutter/material.dart';

// class MultilingualSupport extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black26,
//               blurRadius: 10,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Text(
//               'Select Your Language',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green[700],
//               ),
//             ),
//             SizedBox(height: 20),

//             // Major languages in India as a List
//             Expanded(
//               child: ListView(
//                 children: [
//                   _languageListItem(context, 'Hindi (हिन्दी)',
//                       Colors.orange.withOpacity(0.7)),
//                   _languageListItem(
//                       context, 'English', Colors.lightBlue.withOpacity(0.7)),
//                   _languageListItem(context, 'Bengali (বাংলা)',
//                       Colors.pinkAccent.withOpacity(0.7)),
//                   _languageListItem(context, 'Telugu (తెలుగు)',
//                       Colors.lightGreen.withOpacity(0.7)),
//                   _languageListItem(context, 'Marathi (मराठी)',
//                       Colors.amberAccent.withOpacity(0.7)),
//                   _languageListItem(context, 'Tamil (தமிழ்)',
//                       Colors.purpleAccent.withOpacity(0.7)),
//                   _languageListItem(
//                       context, 'Urdu (اردو)', Colors.cyan.withOpacity(0.7)),
//                   _languageListItem(context, 'Gujarati (ગુજરાતી)',
//                       Colors.lightBlueAccent.withOpacity(0.7)),
//                   _languageListItem(context, 'Malayalam (മലയാളം)',
//                       Colors.teal.withOpacity(0.7)),
//                   _languageListItem(context, 'Kannada (ಕನ್ನಡ)',
//                       Colors.indigoAccent.withOpacity(0.7)),
//                   _languageListItem(
//                       context, 'Odia (ଓଡ଼ିଆ)', Colors.lime.withOpacity(0.7)),
//                   _languageListItem(context, 'Punjabi (ਪੰਜਾਬੀ)',
//                       Colors.deepOrangeAccent.withOpacity(0.7)),
//                 ],
//               ),
//             ),

//             // Navigation Button
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Align(
//                 alignment: Alignment.bottomLeft,
//                 child: ElevatedButton(
//                   onPressed: () {
//                      Navigator.pushReplacementNamed(context, '/home'); // Navigate to home screen
//                   },
//                   child: Text('Go to Home'),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.green[600], // Background color
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(
//                           20), // Rounded corners for button
//                     ),
//                     padding: EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 10), // Adjust padding for a smaller button
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _languageListItem(BuildContext context, String language, Color color) {
//     return Card(
//       color: color,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: ListTile(
//         title: Text(
//           language,
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         trailing: Icon(Icons.check,
//             color: Colors.black), // Add check icon for selection feedback
//         onTap: () {
//           // You can add language selection functionality here
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('$language selected!')),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MultilingualSupport extends StatefulWidget {
  @override
  _MultilingualSupportState createState() => _MultilingualSupportState();
}

class _MultilingualSupportState extends State<MultilingualSupport> {
  String? _selectedLanguage; // Variable to hold the selected language
  double _scaleFactor = 1.0; // Initial scale factor for hover effect

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Language'),
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Major languages in India as a List
            Expanded(
              child: ListView(
                children: [
                  _languageOption('Hindi (हिन्दी)'),
                  _languageOption('English'),
                  _languageOption('Malayalam (മലയാളം)'),
                  _languageOption('Bengali (বাংলা)'),
                  _languageOption('Telugu (తెలుగు)'),
                  _languageOption('Marathi (मराठी)'),
                  _languageOption('Tamil (தமிழ்)'),
                  _languageOption('Urdu (اردو)'),
                  _languageOption('Gujarati (ગુજરાતી)'),
                  _languageOption('Kannada (ಕನ್ನಡ)'),
                  _languageOption('Odia (ଓଡ଼ିଆ)'),
                  _languageOption('Punjabi (ਪੰਜਾਬੀ)'),
                ],
              ),
            ),

            // Navigation Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: MouseRegion(
                onEnter: (_) => _hoverEffect(true),
                onExit: (_) => _hoverEffect(false),
                child: Transform.scale(
                  scale: _scaleFactor,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_selectedLanguage != null) {
                        // Use the selected language as needed
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Selected language: $_selectedLanguage')),
                        );
                        // Navigate to home screen
                        Navigator.pushReplacementNamed(context, '/home');
                      } else {
                        // Show a message if no language is selected
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Please select a language!')),
                        );
                      }
                    },
                    child: Text('Go to Home'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[700], // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Rounded corners for button
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjust padding for a smaller button
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _languageOption(String language) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLanguage = language; // Update selected language
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: _selectedLanguage == language ? Colors.green[700]! : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Radio<String>(
              value: language, // The value that will be assigned when this option is selected
              groupValue: _selectedLanguage, // The current selected value
              onChanged: (String? value) {
                setState(() {
                  _selectedLanguage = value; // Update selected language
                });
              },
              activeColor: Colors.green[700], // Color for the selected option
            ),
            Expanded(
              child: Text(
                language,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _hoverEffect(bool isHovered) {
    setState(() {
      _scaleFactor = isHovered ? 1.05 : 1.0; // Update scale factor for hover effect
    });
  }
}

// import 'package:flutter/material.dart';
// import 'package:ai_crop_disease_system/l10n/l10n.dart';
// import 'package:intl/intl.dart'; // Import for language support

// class MultilingualSupport extends StatefulWidget {
//   final Function(Locale) onLocaleChange; // Accept onLocaleChange as a parameter

//   MultilingualSupport({required this.onLocaleChange}); // Add it to the constructor

//   @override
//   _MultilingualSupportState createState() => _MultilingualSupportState();
// }

// class _MultilingualSupportState extends State<MultilingualSupport> {
//   String? _selectedLanguage; // Variable to hold the selected language
//   double _scaleFactor = 1.0; // Initial scale factor for hover effect
//   Locale? _selectedLocale; // Variable to store the selected locale

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Your Language'),
//         backgroundColor: Colors.green[700],
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // List of languages based on L10n.all
//             Expanded(
//               child: ListView(
//                 children: L10n.all.map((locale) {
//                   String languageName = _getLanguageName(locale.languageCode);
//                   return _languageOption(
//                     languageName,
//                     locale,
//                     _selectedLanguage == languageName,
//                   );
//                 }).toList(),
//               ),
//             ),

//             // Navigation Button
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: MouseRegion(
//                 onEnter: (_) => _hoverEffect(true),
//                 onExit: (_) => _hoverEffect(false),
//                 child: AnimatedScale(
//                   scale: _scaleFactor,
//                   duration: Duration(milliseconds: 200),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       if (_selectedLocale != null) {
//                         // Update the locale when language is selected
//                         widget.onLocaleChange(_selectedLocale!);
//                         Navigator.pushReplacementNamed(context, '/home');
//                       } else {
//                         // Show a message if no language is selected
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text('Please select a language!')),
//                         );
//                       }
//                     },
//                     child: Text('Go to Home'),
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.green[700], // Background color
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20), // Rounded corners for button
//                       ),
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 30, // Adjusted padding
//                         vertical: 12,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Updated language option to handle locale selection
//   Widget _languageOption(String language, Locale locale, bool isSelected) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedLanguage = language; // Update selected language
//           _selectedLocale = locale; // Set the selected locale
//         });
//       },
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 8.0),
//         padding: EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: isSelected ? Colors.green[700]! : Colors.grey,
//           ),
//           borderRadius: BorderRadius.circular(10.0),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.3),
//               blurRadius: 4,
//               offset: Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Radio<String>(
//               value: language, // The value that will be assigned when this option is selected
//               groupValue: _selectedLanguage, // The current selected value
//               onChanged: (String? value) {
//                 setState(() {
//                   _selectedLanguage = value; // Update selected language
//                   _selectedLocale = locale; // Set the selected locale
//                 });
//               },
//               activeColor: Colors.green[700], // Color for the selected option
//             ),
//             Expanded(
//               child: Text(
//                 language,
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper function to get the language name based on the locale code
//   String _getLanguageName(String code) {
//     switch (code) {
//       case 'hi': return 'Hindi (हिन्दी)';
//       case 'en': return 'English';
//       case 'ml': return 'Malayalam (മലയാളം)';
//       case 'bn': return 'Bengali (বাংলা)';
//       case 'te': return 'Telugu (తెలుగు)';
//       case 'mr': return 'Marathi (मराठी)';
//       case 'ta': return 'Tamil (தமிழ்)';
//       case 'ur': return 'Urdu (اردو)';
//       case 'gu': return 'Gujarati (ગુજરાતી)';
//       case 'kn': return 'Kannada (ಕನ್ನಡ)';
//       case 'or': return 'Odia (ଓଡ଼ିଆ)';
//       case 'pa': return 'Punjabi (ਪੰਜਾਬੀ)';
//       default: return code; // Fallback for unknown language codes
//     }
//   }

//   // Method to update the hover effect
//   void _hoverEffect(bool isHovered) {
//     setState(() {
//       _scaleFactor = isHovered ? 1.05 : 1.0; // Scale for hover effect
//     });
//   }
// }
