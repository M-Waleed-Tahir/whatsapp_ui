import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'WhatsApp',
      home: const HomeScreen(),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
        textTheme: const TextTheme(

          //for light theme

          headlineLarge: TextStyle(fontFamily: '',fontSize: 20.0,color: Colors.black),
          headlineMedium: TextStyle(fontFamily: '',fontSize:18.0 ,color: Color(0xff25292B)),
          headlineSmall: TextStyle(fontFamily: '',fontSize:16.0 ,color: Color(0xff25292B)),
          bodyLarge: TextStyle(fontFamily: '',fontSize: 14.0,color: Color(0xff25292B)),
          bodyMedium: TextStyle(fontFamily: '',fontSize: 12.0,color: Color(0xff25292B)),
        ),
        iconTheme: IconThemeData(color: Colors.grey.shade600),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(

        //for dark theme

    brightness: Brightness.dark,
    textTheme: const TextTheme(
    headlineLarge: TextStyle(fontFamily: '',fontSize: 20.0,color: Colors.white),
    headlineMedium: TextStyle(fontFamily: '',fontSize:18.0 ,color: Colors.white),
    headlineSmall: TextStyle(fontFamily: '',fontSize:16.0 ,color: Colors.white),
    bodyLarge: TextStyle(fontFamily: '',fontSize: 14.0,color: Colors.white),
    bodyMedium: TextStyle(fontFamily: '',fontSize: 12.0,color: Colors.white),
      ),

      ),
    );
  }
}


