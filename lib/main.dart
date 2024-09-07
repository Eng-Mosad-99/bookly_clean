import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'core/router/app_router.dart';

void main() {
  runApp(const BooklyClean());
}

class BooklyClean extends StatelessWidget {
  const BooklyClean({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
