import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mopital_app/screen/primary_screen.dart';
import 'package:mopital_app/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widget/buttom.dart';
import '../widget/vectors/vectorone.dart';
import '../widget/vectors/vectorthree.dart';
import '../widget/vectors/vectortwo.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with TickerProviderStateMixin {
  late AnimationController _vectorOneController;
  late AnimationController _vectorTwoController;
  late AnimationController _vectorThreeController;
  late AnimationController _imageController;
  late AnimationController _textController;
  late AnimationController _buttonController;

  late Animation<Offset> _vectorOneOffsetAnimation;
  late Animation<Offset> _vectorTwoOffsetAnimation;
  late Animation<Offset> _vectorThreeOffsetAnimation;
  late Animation<Offset> _imageOffsetAnimation;
  late Animation<Offset> _textOffsetAnimation;
  late Animation<double> _buttonAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller of Image

    _imageController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _imageOffsetAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: const Offset(0, 0),
    ).animate(_imageController);

    _imageController.forward();

    // Initialize the animation controller of Text

    _textController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _textOffsetAnimation = Tween<Offset>(
      begin: const Offset(0, 15),
      end: const Offset(0, 0),
    ).animate(_textController);

    _textController.forward();

    // Initialize the animation controller of Button

    _buttonController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    final curve = CurvedAnimation(
      parent: _buttonController,
      curve: Curves.easeInOut,
    );

    _buttonAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(const Duration(seconds: 3), () {
      _buttonController.forward();
    });

    // Initialize the animation controller of Vector One

    _vectorOneController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _vectorOneOffsetAnimation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(_vectorOneController);

    _vectorOneController.forward();

    // Initialize the animation controller of Vector Two
    _vectorTwoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _vectorTwoOffsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(_vectorTwoController);

    Future.delayed(const Duration(milliseconds: 1000), () {
      _vectorTwoController.forward();
    });

    // Initialize the animation controller of Vector Three

    _vectorThreeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _vectorThreeOffsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(_vectorThreeController);

    Future.delayed(const Duration(milliseconds: 1000), () {
      _vectorThreeController.forward();
    });
  }

  @override
  void dispose() {
    _vectorOneController.dispose();
    _vectorTwoController.dispose();
    _vectorThreeController.dispose();
    _imageController.dispose();
    _textController.dispose();
    _buttonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Transform.translate(
              offset: const Offset(0, -150),
              child: Center(
                child: SlideTransition(
                  position: _imageOffsetAnimation,
                  child: Image.asset(
                    'images/mopital.png',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              child: SizedBox(
                child: SlideTransition(
                  position: _vectorOneOffsetAnimation,
                  child: CustomPaint(
                    size: Size(300, (300 * 0.5974842767295597).toDouble()),
                    painter: VectorOnePainter(),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                child: SlideTransition(
                  position: _vectorTwoOffsetAnimation,
                  child: CustomPaint(
                    size: Size(280, (250 * 1.3166666666666667).toDouble()),
                    painter: VectorTwoPainter(),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                child: SlideTransition(
                  position: _vectorThreeOffsetAnimation,
                  child: CustomPaint(
                    size: Size(300, (250 * 1.1233766233766234).toDouble()),
                    painter: VectorThreePainter(),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: MediaQuery.of(context).size.height * 0.8,
              child: FadeTransition(
                opacity: _buttonAnimation,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: MyButtom(
                    text: 'English',
                    color: darkOrange,
                    onPressed: () async {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const PrimaryScreen(),
                        ),
                      );
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setBool('openedBefore', true);
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: MediaQuery.of(context).size.height * 0.8,
              child: FadeTransition(
                opacity: _buttonAnimation,
                child: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: MyButtom(
                    text: 'عربي',
                    color: darkGreen,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Center(
              child: Stack(
                children: [
                  SlideTransition(
                    position: _textOffsetAnimation,
                    child: Text(
                      'MOPITAL',
                      style: GoogleFonts.alfaSlabOne(
                        fontSize: 40,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = darkGreen,
                      ),
                    ),
                  ),
                  SlideTransition(
                    position: _textOffsetAnimation,
                    child: Text(
                      'MOPITAL',
                      style: GoogleFonts.alfaSlabOne(
                        fontSize: 40,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                        color: darkOrange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
