import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_blog/components/colors.dart';
import 'package:tech_blog/view/main_screen.dart';
import 'package:tech_blog/view/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: SolidColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.systemNavigationBarColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech-Blog',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('fa'), // Farsi
      ],
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(width: 2),
          ),
          filled: true,
          fillColor: Colors.black12,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return const TextStyle(
                fontSize: 20,
              );
            } else {
              return const TextStyle(
                fontSize: 16,
              );
            }
          }), backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return SolidColors.primaryColor;
            }
            return SolidColors.primaryColor;
          })),
        ),
        useMaterial3: true,
        fontFamily: "vazir",
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Colors.white),
          displayMedium: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          titleLarge: TextStyle(fontSize: 18, color: Colors.white),
          titleMedium: TextStyle(fontSize: 16, color: Colors.white),
          titleSmall: TextStyle(
              fontSize: 12, color: Color.fromARGB(220, 255, 255, 255)),
          labelLarge: TextStyle(
            fontSize: 18,
          ),
          labelMedium: TextStyle(
            fontSize: 16,
          ),
          labelSmall: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      //: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: MainScreen(),
    );
  }
}
