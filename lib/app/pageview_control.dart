import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/export_widget.dart';
import 'package:portfolio/app/CV/cv.dart';
import 'package:portfolio/app/Projects/projects.dart';

import 'Home/home.dart';

class PageViewControl extends StatefulWidget {
  const PageViewControl({Key? key}) : super(key: key);

  goToPage(int page, PageController pageCtrl) {
    return pageCtrl.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  State<PageViewControl> createState() => _PageViewControlState();
}

class _PageViewControlState extends State<PageViewControl> {
  PageController pageCtrl = PageController();

  late ScrollController mpScrollCtrl;
  late ScrollController projScrollCtrl;
  late ScrollController cvScrollCtrl;

  int pageIndex = 0;
  bool isActive = false;

  goToPage(int page, PageController pageCtrl) {
    return pageCtrl.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  void initState() {
    super.initState();
    mpScrollCtrl = ScrollController();
    // ..addListener(() {
    //   if (mpScrollCtrl.position.maxScrollExtent ==
    //       mpScrollCtrl.position.pixels) {
    //     goToPage(1, pageCtrl);
    //   }
    // });
    projScrollCtrl = ScrollController();
    // ..addListener(() {
    // if (projScrollCtrl.position.maxScrollExtent ==
    //     projScrollCtrl.position.pixels) {
    //   goToPage(2, pageCtrl);
    // } else if (projScrollCtrl.position.pixels <= 0) {
    //   goToPage(0, pageCtrl);
    // }
    // });
    cvScrollCtrl = ScrollController();
    // ..addListener(() {
    // if (cvScrollCtrl.position.pixels == 0) {
    //   goToPage(1, pageCtrl);
    // }
    // });
  }

  @override
  void dispose() {
    mpScrollCtrl.dispose();
    projScrollCtrl.dispose();
    cvScrollCtrl.dispose();
    pageCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kPageButton(
                      0,
                      'MY SELF',
                      30,
                      35,
                    ),
                    const SizedBox(height: 20),
                    kPageButton(
                      1,
                      'Projects'.toUpperCase(),
                      30,
                      35,
                    ),
                    const SizedBox(height: 20),
                    kPageButton(
                      2,
                      'CV',
                      30,
                      35,
                    ),
                  ],
                ),
              ),
            ),
            pageViewBody(
              true,
              Axis.vertical,
            ),
          ],
        ),
      ),
      //------------------------layout for phone
      phone: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .09,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    kPageButton(
                      0,
                      'MY SELF',
                      20,
                      25,
                    ),
                    const SizedBox(width: 20),
                    kPageButton(
                      1,
                      'Projects'.toUpperCase(),
                      20,
                      25,
                    ),
                    const SizedBox(width: 20),
                    kPageButton(
                      2,
                      'CV',
                      20,
                      25,
                    ),
                  ],
                ),
              ),
            ),
            pageViewBody(
              false,
              Axis.horizontal,
            ),
          ],
        ),
      ),
    );
  }

  TextButton kPageButton(
      int page, String pageName, double fontSize, double hoverFontSize) {
    return TextButton(
      onPressed: () => goToPage(page, pageCtrl),
      style: kButtonStyle(fontSize, hoverFontSize).copyWith(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => pageIndex == page
              ? Colors.blueGrey.shade100.withOpacity(.05)
              : states.contains(MaterialState.hovered)
                  ? Colors.blueGrey.withOpacity(.5)
                  : Colors.transparent,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          pageName,
        ),
      ),
    );
  }

  Expanded pageViewBody(bool isDesktop, scrollDirection) {
    return Expanded(
      child: Padding(
        padding: isDesktop
            ? const EdgeInsets.fromLTRB(10, 10, 40, 20)
            : const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: PageView(
          // physics: const NeverScrollableScrollPhysics(),
          pageSnapping: true,
          controller: pageCtrl,
          scrollDirection: scrollDirection,
          onPageChanged: (p) {
            setState(() {
              pageIndex = p;
            });
          },
          children: [
            MySelf(
              scrollCtrl: mpScrollCtrl,
            ),
            Projects(
              scrollCtrl: projScrollCtrl,
            ),
            CVpage(
              scrollCtrl: cvScrollCtrl,
            ),
          ],
        ),
      ),
    );
  }

  ButtonStyle kButtonStyle(double fontSize, double hoverFontSize) {
    return ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.padded,
      foregroundColor: MaterialStateProperty.resolveWith(
        (states) {
          return states.contains(MaterialState.hovered)
              ? Colors.blueGrey.shade100
              : Colors.blueGrey;
        },
      ),
      minimumSize: MaterialStateProperty.all(
        Size(MediaQuery.of(context).size.width * .11, 15),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textStyle: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.hovered)
            ? TextStyle(
                fontSize: hoverFontSize,
                fontFamily: 'ShareTechMono',
                fontWeight: FontWeight.bold,
              )
            : TextStyle(
                fontSize: fontSize,
                fontFamily: 'ShareTechMono',
                fontWeight: FontWeight.bold,
              ),
      ),
    );
  }
}
