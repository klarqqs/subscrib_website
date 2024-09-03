import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'DegularDisplay',
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color liteSideColor = Colors.white;
  Color liteBackgroundColor = const Color.fromARGB(255, 232, 82, 62);

  Color monthlyPremiumSideColor = Colors.white;
  Color monthlyPremiumBackgroundColor = const Color.fromARGB(255, 232, 82, 62);

  Color yearlyPremiumSideColor = Colors.white;
  Color yearlyPremiumBackgroundColor = const Color.fromARGB(255, 232, 82, 62);

  Color heroSideColor = Colors.white;
  Color heroBackgroundColor = const Color.fromARGB(255, 232, 82, 62);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 1200,
                height: 72,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black.withOpacity(.075),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "SubsCrib",
                      style: TextStyle(
                        fontFamily: 'DegularDisplay',
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.network(
                          'https://static.tildacdn.com/tild6164-3631-4931-b363-663461613730/gp-badge.svg',
                          height: 44,
                        ),
                        const SizedBox(width: 12),
                        SvgPicture.network(
                          'https://static.tildacdn.com/tild3734-3464-4638-b763-363464393333/as-badge.svg',
                          height: 44,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: 1200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(
                    color: Colors.black.withOpacity(.075),
                    width: 1,
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/hero_bg.png',
                    ),
                    fit: BoxFit.cover,
                    opacity: .75,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 40.0,
                          left: 40.0,
                          bottom: 24.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Stay on top of your subs like a pro.",
                              style: TextStyle(
                                fontFamily: 'DegularDisplay',
                                fontSize: 60,
                                fontWeight: FontWeight.w700,
                                height: 1,
                                letterSpacing: .4,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 18),
                            const Text(
                              "SubsCrib helps you keep tabs on all your subs and save cash, all from one super easy, no-stress app.",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'DegularDisplay',
                                fontSize: 20,
                                height: 1.4,
                                fontWeight: FontWeight.w500,
                                letterSpacing: .8,
                              ),
                            ),
                            const SizedBox(height: 32),
                            AnimatedContainer(
                              // width: 140,
                              height: 48,
                              duration: const Duration(milliseconds: 200),
                              child: TextButton(
                                onHover: (value) {
                                  value
                                      ? setState(() {
                                          heroSideColor = const Color.fromARGB(
                                              255, 232, 82, 62);
                                          heroBackgroundColor = Colors.white;
                                        })
                                      : setState(() {
                                          heroBackgroundColor =
                                              const Color.fromARGB(
                                                  255, 232, 82, 62);
                                          heroSideColor = Colors.white;
                                        });
                                },
                                style: ButtonStyle(
                                  side: WidgetStateProperty.all(
                                    BorderSide(
                                      color: heroSideColor,
                                      width: 1,
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(
                                    heroBackgroundColor,
                                  ),
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                  overlayColor: WidgetStateProperty.all(
                                      Colors.transparent),
                                  foregroundColor: WidgetStateProperty.all(
                                      Colors.transparent),
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Text(
                                    "Join waitlist",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'DegularDisplay',
                                      height: 1.4,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: .8,
                                      color: heroSideColor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        // height: 800,
                        child: Image.asset("assets/images/hero.png"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 72),
              Container(
                width: 1200,
                padding: const EdgeInsets.symmetric(
                  horizontal: 36.0,
                  vertical: 88.0,
                ),
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 232, 82, 62).withOpacity(.08),
                  borderRadius: BorderRadius.circular(40.0),
                  // border: Border.all(
                  //   color: Colors.black.withOpacity(.075),
                  //   width: 1,
                  // ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .1),
                      child: const Text(
                        "Can't keep track of what you're spending or when those subs hit you?",
                        style: TextStyle(
                          fontFamily: 'DegularDisplay',
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff141414),
                          height: 1.15,
                          letterSpacing: .2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      "You need a sub manager to keep those costs in check.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'DegularDisplay',
                        fontSize: 20,
                        height: 1.4,
                        color: Color(0xff141414),
                        fontWeight: FontWeight.w500,
                        letterSpacing: .8,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 72),
              Container(
                width: 1200,
                padding: const EdgeInsets.symmetric(
                  horizontal: 36.0,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sub breakdown",
                            style: TextStyle(
                              fontFamily: 'DegularDisplay',
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                              height: 1.15,
                              letterSpacing: .2,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 18),
                          Text(
                            "—  How much am I spending?",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'DegularDisplay',
                              fontSize: 20,
                              height: 1.4,
                              fontWeight: FontWeight.w700,
                              letterSpacing: .8,
                            ),
                          ),
                          Text(
                            "Check your subscription costs by week, month, or year—and switch up the currency if you need to.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'DegularDisplay',
                              fontSize: 20,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .8,
                            ),
                          ),
                          SizedBox(height: 18),
                          Text(
                            "—  When are my renewal dates?",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'DegularDisplay',
                              fontSize: 20,
                              height: 1.4,
                              fontWeight: FontWeight.w700,
                              letterSpacing: .8,
                            ),
                          ),
                          Text(
                            "Check out when your subs renew with our interactive calendar.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'DegularDisplay',
                              fontSize: 20,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .8,
                            ),
                          ),
                          SizedBox(height: 18),
                          Text(
                            "—  How do my expenses change over time?",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'DegularDisplay',
                              fontSize: 20,
                              height: 1.4,
                              fontWeight: FontWeight.w700,
                              letterSpacing: .8,
                            ),
                          ),
                          Text(
                            "Track your monthly spending to keep your budget on point.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'DegularDisplay',
                              fontSize: 20,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 5,
                      child: Center(
                        child: SizedBox(
                          height: 565,
                          child: Image.asset("assets/images/image1.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 1200,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 565,
                        padding: const EdgeInsets.only(
                          top: 60.0,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffEDEDFE),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Get renewal reminders",
                                  style: TextStyle(
                                    fontFamily: 'DegularDisplay',
                                    fontSize: 36,
                                    fontWeight: FontWeight.w700,
                                    height: 1.15,
                                    letterSpacing: .2,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 18),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              .02),
                                  child: const Text(
                                    "Turn on push notifications for renewal dates so you can cancel any unwanted subs before they charge you!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'DegularDisplay',
                                      fontSize: 20,
                                      height: 1.4,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .8,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 325,
                              child: Image.asset("assets/images/image2.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Container(
                        height: 565,
                        padding: const EdgeInsets.only(
                          top: 60.0,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 237, 254, 249),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Bank statement scan",
                                  style: TextStyle(
                                    fontFamily: 'DegularDisplay',
                                    fontSize: 36,
                                    fontWeight: FontWeight.w700,
                                    height: 1.15,
                                    letterSpacing: .2,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 18),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              .02),
                                  child: const Text(
                                    "The app checks your bank statements to find and list all your active subscriptions.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'DegularDisplay',
                                      fontSize: 20,
                                      height: 1.4,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .8,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 325,
                              child: Image.asset("assets/images/image2.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 72),
              SizedBox(
                width: 1200,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        height: 300,
                        padding: const EdgeInsets.only(
                          top: 60.0,
                        ),
                        child: const Text(
                          "Add a subscription from\nthe catalog",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'GulfsDisplay',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.25,
                            letterSpacing: .2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Container(
                        height: 300,
                        padding: EdgeInsets.only(
                          top: 24.0,
                          left: MediaQuery.of(context).size.width * .02,
                          right: MediaQuery.of(context).size.width * .02,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.0),
                          border: Border.all(
                            color: Colors.black.withOpacity(.15),
                            width: 1,
                          ),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2500 +",
                              style: TextStyle(
                                fontFamily: 'DegularDisplay',
                                fontSize: 60,
                                fontWeight: FontWeight.w700,
                                height: 1.15,
                                letterSpacing: .2,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Popular global services are listed in our catalog",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'DegularDisplay',
                                      fontSize: 18,
                                      height: 1.25,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .8,
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Container(
                        height: 300,
                        padding: EdgeInsets.only(
                          top: 24.0,
                          left: MediaQuery.of(context).size.width * .02,
                          right: MediaQuery.of(context).size.width * .02,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.0),
                          border: Border.all(
                            color: Colors.black.withOpacity(.15),
                            width: 1,
                          ),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "25",
                              style: TextStyle(
                                fontFamily: 'DegularDisplay',
                                fontSize: 60,
                                fontWeight: FontWeight.w700,
                                height: 1.15,
                                letterSpacing: .2,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Service categories",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'DegularDisplay',
                                      fontSize: 18,
                                      height: 1.25,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .8,
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 1200,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        height: 300,
                        padding: const EdgeInsets.only(
                          top: 60.0,
                        ),
                        child: const Text(
                          "Create and add your own\nsubscriptions",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'GulfsDisplay',
                            letterSpacing: .2,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.25,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Container(
                        height: 300,
                        padding: EdgeInsets.only(
                          top: 40.0,
                          left: MediaQuery.of(context).size.width * .02,
                          right: MediaQuery.of(context).size.width * .02,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.0),
                          border: Border.all(
                            color: Colors.black.withOpacity(.15),
                            width: 1,
                          ),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Give services you add their own icon",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'DegularDisplay',
                                      fontSize: 18,
                                      height: 1.25,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .8,
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Container(
                        height: 300,
                        padding: EdgeInsets.only(
                          top: 40.0,
                          left: MediaQuery.of(context).size.width * .02,
                          right: MediaQuery.of(context).size.width * .02,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.0),
                          border: Border.all(
                            color: Colors.black.withOpacity(.15),
                            width: 1,
                          ),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Select your color scheme",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'DegularDisplay',
                                      fontSize: 18,
                                      height: 1.25,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: .8,
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 72),
              SizedBox(
                width: 1200,
                child: Column(
                  children: [
                    const Text(
                      "Organize your subscriptions and\nenjoy peace of mind",
                      style: TextStyle(
                        fontFamily: 'DegularDisplay',
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        height: 1,
                        letterSpacing: .2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 72),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40.0),
                              border: Border.all(
                                color: Colors.black.withOpacity(.15),
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.05),
                                  blurRadius: 10,
                                  offset: const Offset(0, 10),
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Lite — Free",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'DegularDisplay',
                                        fontSize: 20,
                                        height: 1.4,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: .8,
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "₦ ",
                                          style: TextStyle(
                                            fontFamily: 'DegularDisplay',
                                            fontSize: 36,
                                            fontWeight: FontWeight.w600,
                                            height: 1,
                                            letterSpacing: .2,
                                          ),
                                        ),
                                        Text(
                                          "0",
                                          style: TextStyle(
                                            fontFamily: 'DegularDisplay',
                                            fontSize: 72,
                                            fontWeight: FontWeight.w700,
                                            height: 1.15,
                                            letterSpacing: .2,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 18),
                                    _buildFeatureCheckAndText(
                                      text: "Basic subscription manager",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "Push notifications",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text:
                                          "Useful information on subscriptions",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text:
                                          "Initial search for subscriptions bank account statement",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text:
                                          "Recommended alternative subscriptions",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 32),
                                AnimatedContainer(
                                  width: MediaQuery.of(context).size.width,
                                  height: 48,
                                  duration: const Duration(milliseconds: 200),
                                  child: TextButton(
                                    onHover: (value) {
                                      value
                                          ? setState(() {
                                              liteSideColor =
                                                  const Color.fromARGB(
                                                      255, 232, 82, 62);
                                              liteBackgroundColor =
                                                  Colors.white;
                                            })
                                          : setState(() {
                                              liteBackgroundColor =
                                                  const Color.fromARGB(
                                                      255, 232, 82, 62);
                                              liteSideColor = Colors.white;
                                            });
                                    },
                                    style: ButtonStyle(
                                      side: WidgetStateProperty.all(
                                        BorderSide(
                                          color: liteSideColor,
                                          width: 1,
                                        ),
                                      ),
                                      backgroundColor: WidgetStateProperty.all(
                                        liteBackgroundColor,
                                      ),
                                      shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                      ),
                                      overlayColor: WidgetStateProperty.all(
                                          Colors.transparent),
                                      foregroundColor: WidgetStateProperty.all(
                                          Colors.transparent),
                                    ),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child: Text(
                                        "Get started",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'DegularDisplay',
                                          height: 1.4,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: .8,
                                          color: liteSideColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 24),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40.0),
                              border: Border.all(
                                color: Colors.black.withOpacity(.15),
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.05),
                                  blurRadius: 10,
                                  offset: const Offset(0, 10),
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Premium — Per Month",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'DegularDisplay',
                                        fontSize: 20,
                                        height: 1.4,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: .8,
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "₦ ",
                                          style: TextStyle(
                                            fontFamily: 'DegularDisplay',
                                            fontSize: 36,
                                            fontWeight: FontWeight.w600,
                                            height: 1,
                                            letterSpacing: .2,
                                          ),
                                        ),
                                        Text(
                                          "950",
                                          style: TextStyle(
                                            fontFamily: 'DegularDisplay',
                                            fontSize: 72,
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: .2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    _buildFeatureCheckAndText(
                                      text: "Basic subscription manager",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "Push notifications",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text:
                                          "Useful information on subscriptions",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text:
                                          "Unlimited search for subscriptions bank account statement",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text:
                                          "Recommended alternative subscriptions",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "Promo code notifications",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "Multiple lists",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "No ads",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "Premium support",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 32),
                                AnimatedContainer(
                                  width: MediaQuery.of(context).size.width,
                                  height: 48,
                                  duration: const Duration(milliseconds: 200),
                                  child: TextButton(
                                    onHover: (value) {
                                      value
                                          ? setState(() {
                                              monthlyPremiumSideColor =
                                                  const Color.fromARGB(
                                                      255, 232, 82, 62);
                                              monthlyPremiumBackgroundColor =
                                                  Colors.white;
                                            })
                                          : setState(() {
                                              monthlyPremiumBackgroundColor =
                                                  const Color.fromARGB(
                                                      255, 232, 82, 62);
                                              monthlyPremiumSideColor =
                                                  Colors.white;
                                            });
                                    },
                                    style: ButtonStyle(
                                      side: WidgetStateProperty.all(
                                        BorderSide(
                                          color: monthlyPremiumSideColor,
                                          width: 1,
                                        ),
                                      ),
                                      backgroundColor: WidgetStateProperty.all(
                                        monthlyPremiumBackgroundColor,
                                      ),
                                      shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                      ),
                                      overlayColor: WidgetStateProperty.all(
                                          Colors.transparent),
                                      foregroundColor: WidgetStateProperty.all(
                                          Colors.transparent),
                                    ),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child: Text(
                                        "Get started",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'DegularDisplay',
                                          height: 1.4,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: .8,
                                          color: monthlyPremiumSideColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 24),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40.0),
                              border: Border.all(
                                color: Colors.black.withOpacity(.15),
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.05),
                                  blurRadius: 10,
                                  offset: const Offset(0, 10),
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Premium — Per Year",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'DegularDisplay',
                                        fontSize: 20,
                                        height: 1.4,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: .8,
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "₦ ",
                                          style: TextStyle(
                                            fontFamily: 'DegularDisplay',
                                            fontSize: 36,
                                            fontWeight: FontWeight.w600,
                                            height: 1,
                                            letterSpacing: .2,
                                          ),
                                        ),
                                        Text(
                                          "9,120",
                                          style: TextStyle(
                                            fontFamily: 'DegularDisplay',
                                            fontSize: 72,
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: .2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    _buildFeatureCheckAndText(
                                      text: "Basic subscription manager",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "Push notifications",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text:
                                          "Useful information on subscriptions",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text:
                                          "Unlimited search for subscriptions bank account statement",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text:
                                          "Recommended alternative subscriptions",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "Promo code notifications",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "Multiple lists",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "No ads",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "Premium support",
                                    ),
                                    _buildFeatureCheckAndText(
                                      text: "Save 20%",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 32),
                                AnimatedContainer(
                                  width: MediaQuery.of(context).size.width,
                                  height: 48,
                                  duration: const Duration(milliseconds: 200),
                                  child: TextButton(
                                    onHover: (value) {
                                      value
                                          ? setState(() {
                                              yearlyPremiumSideColor =
                                                  const Color.fromARGB(
                                                      255, 232, 82, 62);
                                              yearlyPremiumBackgroundColor =
                                                  Colors.white;
                                            })
                                          : setState(() {
                                              yearlyPremiumBackgroundColor =
                                                  const Color.fromARGB(
                                                      255, 232, 82, 62);
                                              yearlyPremiumSideColor =
                                                  Colors.white;
                                            });
                                    },
                                    style: ButtonStyle(
                                      side: WidgetStateProperty.all(
                                        BorderSide(
                                          color: yearlyPremiumSideColor,
                                          width: 1,
                                        ),
                                      ),
                                      backgroundColor: WidgetStateProperty.all(
                                        yearlyPremiumBackgroundColor,
                                      ),
                                      shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                      ),
                                      overlayColor: WidgetStateProperty.all(
                                          Colors.transparent),
                                      foregroundColor: WidgetStateProperty.all(
                                          Colors.transparent),
                                    ),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child: Text(
                                        "Get started",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'DegularDisplay',
                                          height: 1.4,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: .8,
                                          color: yearlyPremiumSideColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 72),
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff141414),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 60.0,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white12,
                        ),
                      ),
                    ),
                    width: 1200,
                    child: const Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SubsCrib",
                                style: TextStyle(
                                  fontFamily: 'DegularDisplay',
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  height: 1,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                "Your go-to buddy for handling paid subs like a pro",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'DegularDisplay',
                                  fontSize: 16,
                                  color: Colors.white,
                                  height: 1.4,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: .8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff141414),
                padding: const EdgeInsets.symmetric(
                  vertical: 18.0,
                ),
                child: const Center(
                  child: Text(
                    "© SubsCrib App. All Rights Reserved",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      fontSize: 16,
                      color: Colors.white,
                      height: 1.4,
                      fontWeight: FontWeight.w500,
                      letterSpacing: .8,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildFeatureCheckAndText({text = ""}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'assets/images/check.svg',
            height: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontFamily: 'DegularDisplay',
                fontSize: 16,
                height: 1.4,
                fontWeight: FontWeight.w500,
                letterSpacing: .8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
