import 'package:flutter/material.dart';
import 'package:mopital_app/provider/vaccinc_provider.dart';
import 'package:mopital_app/screen/onboarding_screen.dart';
import 'package:mopital_app/screen/primary_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool openedBefore = prefs.getBool('openedBefore') ?? false;
  runApp(ChangeNotifierProvider(
    create: (context) => VaccincProvider(),
    child: MyApp(
      openedBefore,
    ),
  ));
}

class MyApp extends StatelessWidget {
  final bool? openedBefore;
  const MyApp(this.openedBefore, {super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MoPital',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          centerTitle: false,
          scrolledUnderElevation: 0,
        ),
        useMaterial3: true,
      ),
      home: openedBefore! ? const PrimaryScreen() : const OnBoardingScreen(),
    );
  }
}
