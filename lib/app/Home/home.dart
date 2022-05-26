import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portfolio/Widgets/export_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class MySelf extends StatelessWidget {
  const MySelf({
    Key? key,
    required this.scrollCtrl,
  }) : super(key: key);
  final ScrollController scrollCtrl;
  @override
  Widget build(BuildContext context) {
    // final ScrollController scrollCtrl = ScrollController();
    return ResponsiveLayout(
      desktop: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            controller: scrollCtrl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                avatar(),
                const SizedBox(height: 20),
                myIntro(
                  Theme.of(context).textTheme.headline2!,
                  Theme.of(context).textTheme.headline4!,
                  Theme.of(context).textTheme.headline5!,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'I mostly do my works with -',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 10,
                ),
                tech(),
                const Divider(height: 50),
                Text(
                  'Contact me at - ',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 10),
                contacts(),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
      phone: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            controller: scrollCtrl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                avatar(),
                const SizedBox(height: 20),
                myIntro(
                  Theme.of(context).textTheme.headline4!,
                  Theme.of(context).textTheme.headline5!,
                  Theme.of(context).textTheme.headline6!,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'I mostly do my works with -',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 10,
                ),
                tech(),
                const Divider(height: 50),
                Text(
                  'Contact me at - ',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 10),
                contacts(),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Wrap contacts() {
    return Wrap(
      runSpacing: 10,
      children: [
        TextButton.icon(
          onPressed: () async {
            await launchUrl(
              Uri.parse('https://www.facebook.com/ahnaf.co'),
            );
          },
          icon: const Icon(MdiIcons.facebook),
          label: const Text(
            'Facebook',
          ),
          style: TextButton.styleFrom(
            primary: Colors.blueGrey.shade200,
            backgroundColor: Colors.blueGrey.shade900,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
          ),
        ),
        const SizedBox(width: 10),
        TextButton.icon(
          onPressed: () async {
            await launchUrl(
              Uri.parse('https://twitter.com/ahnafsakil16'),
            );
          },
          icon: const Icon(MdiIcons.twitter),
          label: const Text(
            'Twitter',
          ),
          style: TextButton.styleFrom(
            primary: Colors.blueGrey.shade200,
            backgroundColor: Colors.blueGrey.shade900,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            textStyle: const TextStyle(
              fontFamily: 'Roboto',
            ),
          ),
        ),
        const SizedBox(width: 10),
        TextButton.icon(
          onPressed: () async {
            await launchUrl(
              Uri.parse('https://github.com/Ahnaf16'),
            );
          },
          icon: const Icon(MdiIcons.github),
          label: const Text(
            'GitHub',
          ),
          style: TextButton.styleFrom(
            primary: Colors.blueGrey.shade200,
            backgroundColor: Colors.blueGrey.shade900,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
          ),
        ),
        const SizedBox(width: 10),
        TextButton.icon(
          onPressed: () async {
            await launchUrl(
              Uri.parse('https://www.linkedin.com/in/ahnaf-sakil-8b008622b/'),
            );
          },
          icon: const Icon(MdiIcons.linkedin),
          label: const Text(
            'LinkedIn',
          ),
          style: TextButton.styleFrom(
            primary: Colors.blueGrey.shade200,
            backgroundColor: Colors.blueGrey.shade900,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
          ),
        ),
        const SizedBox(width: 10),
        TextButton.icon(
          onPressed: () async {
            await launchUrl(
              Uri(
                scheme: 'mailto',
                path: 'ahnafsakil16@gmail.com',
                // query:
              ),
            );
          },
          icon: const Icon(MdiIcons.gmail),
          label: const Text(
            'Gmail',
          ),
          style: TextButton.styleFrom(
            primary: Colors.blueGrey.shade200,
            backgroundColor: Colors.blueGrey.shade900,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
          ),
        ),
      ],
    );
  }

  Wrap tech() {
    return Wrap(
      runSpacing: 10,
      children: [
        Card(
          color: Colors.blueGrey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: InfoIcon(
            textThemeStyle: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade300,
              fontFamily: 'Roboto',
            ),
            lebel: 'Flutter',
            useWidget: true,
            widget: const FlutterLogo(
              size: 30,
            ),
          ),
        ),
        Card(
          color: Colors.blueGrey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: InfoIcon(
            textThemeStyle: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade300,
              fontFamily: 'Roboto',
            ),
            lebel: 'Dart',
            useWidget: true,
            widget: Image.asset(
              'assets/imgs/dart.png',
              height: 25,
            ),
          ),
        ),
        Card(
          color: Colors.blueGrey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: InfoIcon(
            textThemeStyle: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade300,
              fontFamily: 'Roboto',
            ),
            lebel: 'Firebase',
            icon: MdiIcons.firebase,
            iconColor: Colors.amber,
          ),
        ),
        Card(
          color: Colors.blueGrey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: InfoIcon(
            textThemeStyle: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade300,
              fontFamily: 'Roboto',
            ),
            lebel: 'GitHub',
            icon: MdiIcons.github,
          ),
        ),
        Card(
          color: Colors.blueGrey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: InfoIcon(
            textThemeStyle: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade300,
              fontFamily: 'Roboto',
            ),
            lebel: 'Git',
            icon: MdiIcons.git,
            iconColor: Colors.orange,
          ),
        ),
        Card(
          color: Colors.blueGrey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: InfoIcon(
            textThemeStyle: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade300,
              fontFamily: 'Roboto',
            ),
            lebel: 'VS Code',
            icon: MdiIcons.microsoftVisualStudioCode,
            iconColor: Colors.blue,
          ),
        ),
        Card(
          color: Colors.blueGrey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: InfoIcon(
            textThemeStyle: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade300,
              fontFamily: 'Roboto',
            ),
            lebel: 'StackOverflow',
            widget: Image.asset(
              'assets/imgs/sof.png',
              height: 25,
            ),
            useWidget: true,
          ),
        ),
        Card(
          color: Colors.blueGrey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: InfoIcon(
            textThemeStyle: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade300,
              fontFamily: 'Roboto',
            ),
            lebel: 'Figma',
            widget: Image.asset(
              'assets/imgs/figma.png',
              height: 25,
            ),
            useWidget: true,
          ),
        ),
        Card(
          color: Colors.blueGrey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: InfoIcon(
            textThemeStyle: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade300,
              fontFamily: 'Roboto',
            ),
            lebel: 'Photoshop',
            widget: Image.asset(
              'assets/imgs/ps.png',
              height: 28,
            ),
            useWidget: true,
          ),
        ),
        Card(
          color: Colors.blueGrey.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: InfoIcon(
            textThemeStyle: TextStyle(
              fontSize: 20,
              color: Colors.blueGrey.shade300,
              fontFamily: 'Roboto',
            ),
            lebel: 'Illustrator',
            widget: Image.asset(
              'assets/imgs/ai.png',
              height: 28,
            ),
            useWidget: true,
          ),
        )
      ],
    );
  }

  Text myIntro(TextStyle head2, TextStyle head4, TextStyle head5) {
    return Text.rich(
      TextSpan(
        text: 'Hi,',
        style: head2.copyWith(
          height: 1.2,
        ),
        children: [
          const TextSpan(
            text: '\n',
          ),
          const TextSpan(
            text: 'I\'m Ahnaf',
          ),
          const TextSpan(
            text: '\n',
          ),
          TextSpan(
            text: 'A Full Stack Cross-Platform Appilcation Developer',
            style: head4.copyWith(
              height: 1.5,
            ),
          ),
          const TextSpan(
            text: '\n',
          ),
          TextSpan(
            text:
                'I\'m from Bangladesh. I spend most of my time coding and learning new things.',
            style: head5.copyWith(
              height: 1.5,
            ),
          ),
          const TextSpan(
            text: '\n',
          ),
          TextSpan(
            text:
                'My hobby is Gaming, Drawing, Reading Books and watching Anime',
            style: head5.copyWith(
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  CircleAvatar avatar() {
    return const CircleAvatar(
      radius: 110,
      backgroundImage: AssetImage('assets/imgs/ahnaf.jpg'),
    );
  }
}
