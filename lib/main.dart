import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_site/core/helpers/colors.dart';
import 'package:product_site/core/providers/product_card_provider.dart';
import 'package:product_site/screens/home/home_base.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductCardProvider>(
          create: (_) => ProductCardProvider(),
        )
      ],
      child: MaterialApp(
        builder: (context, child) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, child!),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: TABLET),
              const ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
            ],
            background: Container(color: const Color(0xFFF5F5F5))),
        title: 'Shoe Shopper',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            backgroundColor: AppColors.dullWhite,
            fontFamily: GoogleFonts.inter().fontFamily,
            colorScheme:
                ColorScheme.fromSwatch(accentColor: AppColors.dullPink)),
        home: const HomeScreen(),
      ),
    );
  }
}
