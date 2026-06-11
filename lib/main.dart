import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showMessage = false;

  bool showRedCard = false;
  bool showGreenCard = false;
  bool showYellowCard = false;
  bool showPinkCard = false;
  bool showCyanCard = false;
  bool showOrangeCard = false;
  bool showPurpleImage = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          elevation: 4,
          title: const Text(
            'خوش اومدی روشنای عزیزم 🌸',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    // مربع قرمز
                    buildClickableBox(
                      onTap: () {
                        setState(() {
                          showRedCard = true;
                        });
                      },
                      child: showRedCard
                          ? buildFancyCard(
                              backgroundColor: Colors.red.shade400,
                              message:
                                  'اگر امروز یک کتاب بخونی، یک کادوی خوشگل می‌گیری 🎁',
                              icons: const [
                                Icons.favorite,
                                Icons.card_giftcard,
                                Icons.favorite,
                              ],
                              iconColors: const [
                                Colors.pinkAccent,
                                Colors.yellow,
                                Colors.white,
                              ],
                            )
                          : Container(color: Colors.red),
                    ),

                    // مربع سبز
                    buildClickableBox(
                      onTap: () {
                        setState(() {
                          showGreenCard = true;
                        });
                      },
                      child: showGreenCard
                          ? buildFancyCard(
                              backgroundColor: Colors.green.shade500,
                              message:
                                  'اگر یک نقاشی خوشگل بکشی، یک سورپرایز ویژه داری ✨',
                              icons: const [
                                Icons.palette,
                                Icons.star,
                                Icons.favorite,
                              ],
                              iconColors: const [
                                Colors.yellow,
                                Colors.white,
                                Colors.pinkAccent,
                              ],
                            )
                          : Container(color: Colors.green),
                    ),

                    // مربع آبی با دکمه شروع
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          color: Colors.blue,
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  showMessage = true;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber,
                                foregroundColor: Colors.black,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 6,
                              ),
                              child: const Text(
                                'شروع',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    // مربع زرد
                    buildClickableBox(
                      onTap: () {
                        setState(() {
                          showYellowCard = true;
                        });
                      },
                      child: showYellowCard
                          ? buildFancyCard(
                              backgroundColor: Colors.yellow.shade700,
                              message:
                                  'اگر اسباب‌بازی‌هاتو جمع کنی، امشب جایزه داری 🌟',
                              textColor: Colors.black,
                              icons: const [
                                Icons.star,
                                Icons.emoji_events,
                                Icons.star,
                              ],
                              iconColors: const [
                                Colors.orange,
                                Colors.deepOrange,
                                Colors.white,
                              ],
                            )
                          : Container(color: Colors.yellow),
                    ),

                    // مربع وسط
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          color: const Color.fromARGB(255, 250, 203, 128),
                          child: showMessage
                              ? Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(
                                        Icons.favorite,
                                        color: Color.fromARGB(255, 254, 23, 131),
                                        size: 42,
                                      ),
                                      SizedBox(height: 8),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 8),
                                        child: Text(
                                          'خوشگلم یک مربع رنگی انتخاب کن ✨',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : const SizedBox(),
                        ),
                      ),
                    ),

                    // مربع بنفش
                    buildClickableBox(
                      onTap: () {
                        setState(() {
                          showPurpleImage = true;
                        });
                      },
                      child: Container(
                        color: Colors.purple,
                        child: showPurpleImage
                            ? Image.asset(
                                'images/kpopd_1.png',
                                fit: BoxFit.contain,
                                width: double.infinity,
                                height: double.infinity,
                              )
                            : null,
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    // مربع صورتی
                    buildClickableBox(
                      onTap: () {
                        setState(() {
                          showPinkCard = true;
                        });
                      },
                      child: showPinkCard
                          ? buildFancyCard(
                              backgroundColor: Colors.pink.shade300,
                              message:
                                  'روشنای خوشگل من، تو خیلی باهوشی و من بهت افتخار می‌کنم 💖',
                              icons: const [
                                Icons.favorite,
                                Icons.auto_awesome,
                                Icons.favorite,
                              ],
                              iconColors: const [
                                Colors.white,
                                Colors.yellow,
                                Colors.redAccent,
                              ],
                            )
                          : Container(color: Colors.pink),
                    ),

                    // مربع فیروزه‌ای
                    buildClickableBox(
                      onTap: () {
                        setState(() {
                          showCyanCard = true;
                        });
                      },
                      child: showCyanCard
                          ? buildFancyCard(
                              backgroundColor: Colors.cyan.shade500,
                              message:
                                  'اگر امروز ۵ تا کلمه انگلیسی بگی، یک ستاره طلایی می‌گیری ⭐',
                              icons: const [
                                Icons.star,
                                Icons.menu_book,
                                Icons.star,
                              ],
                              iconColors: const [
                                Colors.yellow,
                                Colors.white,
                                Colors.orange,
                              ],
                            )
                          : Container(color: Colors.cyan),
                    ),

                    // مربع نارنجی
                    buildClickableBox(
                      onTap: () {
                        setState(() {
                          showOrangeCard = true;
                        });
                      },
                      child: showOrangeCard
                          ? buildFancyCard(
                              backgroundColor: Colors.orange.shade600,
                              message:
                                  'اگر ۵ دقیقه برقصی یا ورزش کنی، یک جایزه بانمک داری 🎉',
                              icons: const [
                                Icons.music_note,
                                Icons.celebration,
                                Icons.favorite,
                              ],
                              iconColors: const [
                                Colors.white,
                                Colors.yellow,
                                Colors.pinkAccent,
                              ],
                            )
                          : Container(
                              color: const Color.fromARGB(255, 251, 126, 2),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildClickableBox({
    required VoidCallback onTap,
    required Widget child,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: GestureDetector(
          onTap: onTap,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: SizedBox.expand(
              child: child,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFancyCard({
    required Color backgroundColor,
    required String message,
    required List<IconData> icons,
    required List<Color> iconColors,
    Color textColor = Colors.white,
  }) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icons[0], color: iconColors[0], size: 24),
                const SizedBox(width: 8),
                Icon(icons[1], color: iconColors[1], size: 24),
                const SizedBox(width: 8),
                Icon(icons[2], color: iconColors[2], size: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
