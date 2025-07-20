import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Import your providers normally (no alias needed if no conflict)
import 'package:smart_shop/providers/product_provider.dart';
import 'package:smart_shop/providers/cart_provider.dart';
import 'package:smart_shop/providers/theme_provider.dart';

import 'package:smart_shop/screens/splash_screen.dart';
import 'package:smart_shop/screens/login_screen.dart';
import 'package:smart_shop/screens/home_screen.dart' hide ProductProvider;
import 'package:smart_shop/screens/cart_screen.dart';
import 'package:smart_shop/screens/favourites_screen.dart';
import 'package:smart_shop/screens/profile_screen.dart';

import ' utils/shared_prefs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init(); // Initialize SharedPreferences
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Smart Shop',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
            initialRoute: '/',
            routes: {
              '/': (context) => const SplashScreen(),
              '/login': (context) => const LoginScreen(),
              '/home': (context) => const HomeScreen(),
              '/cart': (context) => const CartScreen(),
              '/favourites': (context) => const FavouritesScreen(),
              '/profile': (context) => const ProfileScreen(),
            },
          );
        },
      ),
    );
  }
}
