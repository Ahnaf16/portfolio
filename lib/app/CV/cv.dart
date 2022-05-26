import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portfolio/const/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Widgets/export_widget.dart';

class CVpage extends StatelessWidget {
  const CVpage({
    Key? key,
    required this.scrollCtrl,
  }) : super(key: key);
  final ScrollController scrollCtrl;
  final String about =
      'I am a self-taught Frotend and Backend developer with a background in computer science. I learned programming in my free time and decided to pursue it. '
      'I have been working as a software developer for the past 7 months. I have a strong interest in Cross-platform development '
      'and I am currently working on a project to develop a Cross-platform application to monitor  and manage a company\'s backend. '
      'Although I am still a student and learning new things, I am very passionate about programming. '
      'I always look forward to work on a project that will help me to improve my skills and knowledge. '
      'I also have experience in Graphic Design and 2D animation.';
  @override
  Widget build(BuildContext context) {
//

    TextTheme textTheme = Theme.of(context).textTheme;
    final Color mainColor = KColor.mainColor;
    // final ScrollController scrollCtrl = ScrollController();

    return ResponsiveLayout(
      desktop: SingleChildScrollView(
        controller: scrollCtrl,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .28,
                  child: skillsAndInfos(textTheme),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .28,
                  child: followMe(textTheme),
                )
              ],
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  aboutMe(textTheme),
                  const SizedBox(height: 20),
                  eduAndExp(textTheme, mainColor, context),
                ],
              ),
            )
          ],
        ),
      ),
      phone: SingleChildScrollView(
        controller: scrollCtrl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            skillsAndInfos(textTheme),
            const SizedBox(height: 20),
            aboutMe(textTheme),
            const SizedBox(height: 20),
            eduAndExp(textTheme, mainColor, context),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: followMe(textTheme),
            )
          ],
        ),
      ),
    );
  }

  Card eduAndExp(TextTheme textTheme, Color mainColor, context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //-----------------------education
            InfoIcon(
              textThemeStyle: textTheme.headline3!,
              icon: Icons.school_outlined,
              iconSize: 40,
              lebel: 'Education',
            ),
            const SizedBox(height: 20),
            //--------------------------collage
            SelectableText(
              'Diploma in Computer Engineering (4 Year)',
              style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            InfoIcon(
              textThemeStyle: textTheme.titleLarge!,
              icon: Icons.calendar_month_outlined,
              iconColor: mainColor,
              iconSize: 25,
              spaceing: 30,
              lebel: 'August 2017 - March 2022',
            ),
            const SizedBox(height: 10),
            SelectableText.rich(
              TextSpan(
                text: 'Institute : ',
                style:
                    textTheme.headline5!.copyWith(fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text: 'Naogaon Polytechnic Institute, Naogaon',
                    style: textTheme.titleLarge,
                  ),
                  const TextSpan(
                    text: '\n\n',
                  ),
                  TextSpan(
                    text: 'Board : ',
                    style: textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: 'Bangladesh Technical Education Board',
                    style: textTheme.titleLarge,
                  ),
                  const TextSpan(
                    text: '\n\n',
                  ),
                  TextSpan(
                    text: 'Passing Year : ',
                    style: textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '2022',
                    style: textTheme.titleLarge,
                  ),
                  const TextSpan(
                    text: '\n\n',
                  ),
                  TextSpan(
                    text: 'Result : ',
                    style: textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: 'N/A',
                    style: textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Divider(
              indent: MediaQuery.of(context).size.width * 0.2,
              endIndent: MediaQuery.of(context).size.width * 0.2,
              height: 50,
            ),

            //---------------------------high school
            SelectableText(
              'Secondary School Certificate (S.S.C)',
              style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            InfoIcon(
              textThemeStyle: textTheme.titleLarge!,
              icon: Icons.calendar_month_outlined,
              iconColor: mainColor,
              iconSize: 25,
              spaceing: 30,
              lebel: 'August 2012 - March 2016',
            ),
            const SizedBox(height: 10),
            SelectableText.rich(
              TextSpan(
                text: 'Institute : ',
                style:
                    textTheme.headline5!.copyWith(fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text: 'Gaibandha Govt. Boys\' High School, Gaibandha',
                    style: textTheme.titleLarge,
                  ),
                  const TextSpan(
                    text: '\n\n',
                  ),
                  TextSpan(
                    text: 'Board : ',
                    style: textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text:
                        'Board of Intermediate and Secondary Education Dinajpur, Bangladesh',
                    style: textTheme.titleLarge,
                  ),
                  const TextSpan(
                    text: '\n\n',
                  ),
                  TextSpan(
                    text: 'Passing Year : ',
                    style: textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '2017',
                    style: textTheme.titleLarge,
                  ),
                  const TextSpan(
                    text: '\n\n',
                  ),
                  TextSpan(
                    text: 'Result : ',
                    style: textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: '4.55',
                    style: textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            const Divider(
              height: 60,
            ),
            //---------------------------EXPERIENCE

            InfoIcon(
              textThemeStyle: textTheme.headline3!,
              icon: Icons.work_outline,
              iconSize: 40,
              lebel: 'Experience',
            ),
            const SizedBox(height: 20),
            //---------------------------flutter
            SelectableText(
              '1. Cross Platform Software Development (Intern)',
              style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            InfoIcon(
              textThemeStyle: textTheme.titleLarge!,
              icon: Icons.calendar_month_outlined,
              iconColor: mainColor,
              iconSize: 25,
              spaceing: 30,
              lebel: 'September 2021 - January 2022',
            ),
            const SizedBox(height: 10),
            SelectableText.rich(
              TextSpan(
                text: 'Institute : ',
                style:
                    textTheme.headline5!.copyWith(fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text: 'ICT Division, Bangladesh',
                    style: textTheme.titleLarge,
                  ),
                  const TextSpan(
                    text: '\n\n',
                  ),
                  TextSpan(
                    text: 'Location : ',
                    style: textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: 'Naogaon, Bangladesh',
                    style: textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Divider(
              indent: MediaQuery.of(context).size.width * 0.2,
              endIndent: MediaQuery.of(context).size.width * 0.2,
              height: 50,
            ),
            //---------------------------ledp
            SelectableText(
              '2. Graphic Design and Animation (Intern)',
              style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            InfoIcon(
              textThemeStyle: textTheme.titleLarge!,
              icon: Icons.calendar_month_outlined,
              iconColor: mainColor,
              iconSize: 25,
              spaceing: 30,
              lebel: 'September 2020 - November 2020',
            ),
            const SizedBox(height: 10),
            SelectableText.rich(
              TextSpan(
                text: 'Institute : ',
                style:
                    textTheme.headline5!.copyWith(fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text:
                        'Learning & Earning Development Project, ICT Division, Bangladesh',
                    style: textTheme.titleLarge,
                  ),
                  const TextSpan(
                    text: '\n\n',
                  ),
                  TextSpan(
                    text: 'Location : ',
                    style: textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: 'Online',
                    style: textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Divider(
              indent: MediaQuery.of(context).size.width * 0.2,
              endIndent: MediaQuery.of(context).size.width * 0.2,
              height: 50,
            ),
            //---------------------------ccna
            SelectableText(
              '3. Cisco Certified Network Associate(CCNA) (Intern)',
              style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            InfoIcon(
              textThemeStyle: textTheme.titleLarge!,
              icon: Icons.calendar_month_outlined,
              iconColor: mainColor,
              iconSize: 25,
              spaceing: 30,
              lebel: 'January 2022 - February 2022',
            ),
            const SizedBox(height: 10),
            SelectableText.rich(
              TextSpan(
                text: 'Institute : ',
                style:
                    textTheme.headline5!.copyWith(fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text: 'Rosetta Technology',
                    style: textTheme.titleLarge,
                  ),
                  const TextSpan(
                    text: '\n\n',
                  ),
                  TextSpan(
                    text: 'Location : ',
                    style: textTheme.headline5!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text:
                        ' Karim Tower (Level 8), 44/7AB, West PanthaPath, North Dhanmondi, Dhaka 1205',
                    style: textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Card aboutMe(TextTheme textTheme) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //--------------------about me
            InfoIcon(
              textThemeStyle: textTheme.headline3!,
              icon: Icons.person_outline,
              iconSize: 40,
              lebel: 'About Me',
            ),
            SelectableText(
              about,
              style: textTheme.titleLarge!.copyWith(
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card skillsAndInfos(TextTheme textTheme) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/imgs/ahnaf.jpg'),
            ),
            SelectableText(
              'Ahnaf Sakil',
              style: textTheme.headline2,
            ),
            InfoIcon(
              textThemeStyle: textTheme.titleLarge!,
              icon: Icons.work_outline,
              lebel: 'Software Developer',
            ),
            InfoIcon(
              textThemeStyle: textTheme.titleLarge!,
              icon: Icons.home_outlined,
              lebel: 'Shirajgang, Bangladesh',
            ),
            InfoIcon(
              textThemeStyle: textTheme.titleLarge!,
              icon: Icons.email_outlined,
              lebel: 'ahnafsakil16@gmail.com',
            ),
            InfoIcon(
              textThemeStyle: textTheme.titleLarge!,
              icon: Icons.phone_outlined,
              lebel: '+8801717053453',
            ),
            InfoIcon(
              textThemeStyle: textTheme.titleLarge!,
              icon: MdiIcons.github,
              lebel: 'Ahnaf16',
            ),
            const Divider(),
            Text(
              'Skills',
              style: textTheme.headline4,
            ),
            SkillIndicator(
              textTheme: textTheme,
              lebel: 'Flutter',
              value: 5,
              leading: const FlutterLogo(),
            ),
            SkillIndicator(
              textTheme: textTheme,
              lebel: 'Dart',
              value: 2,
              leading: Image.asset('assets/imgs/dart.png', height: 30),
            ),
            SkillIndicator(
              textTheme: textTheme,
              lebel: 'Firebase',
              value: 4,
              leading: const Icon(
                MdiIcons.firebase,
                color: Colors.amber,
              ),
            ),
            SkillIndicator(
              textTheme: textTheme,
              lebel: 'GitHub',
              value: 4,
              leading: const Icon(
                MdiIcons.github,
              ),
            ),
            SkillIndicator(
              textTheme: textTheme,
              lebel: 'Abode Photoshop',
              value: 4,
              leading: Image.asset('assets/imgs/ps.png', height: 30),
            ),
            SkillIndicator(
              textTheme: textTheme,
              lebel: 'Adobe Illustrator',
              value: 5,
              leading: Image.asset('assets/imgs/ai.png', height: 30),
            ),
            SkillIndicator(
              textTheme: textTheme,
              lebel: 'Figma',
              value: 4,
              leading: Image.asset('assets/imgs/figma.png', height: 30),
            ),
            SkillIndicator(
              textTheme: textTheme,
              lebel: 'Animation',
              value: 3,
              leading: const Icon(
                MdiIcons.animationPlayOutline,
              ),
            ),
            const Divider(),
            Text(
              'Languages',
              style: textTheme.headline4,
            ),
            SkillIndicator(
              textTheme: textTheme,
              lebel: 'Bangla',
              value: 6,
            ),
            SkillIndicator(
              textTheme: textTheme,
              lebel: 'English',
              value: 4,
            ),
          ],
        ),
      ),
    );
  }

  //---------------------------follow me
  Card followMe(TextTheme textTheme) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Follow me', style: textTheme.headline4),
            const SizedBox(height: 30),
            Wrap(
              spacing: 20,
              runSpacing: 15,
              children: [
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://www.facebook.com/ahnaf.co'),
                    );
                  },
                  icon: const Icon(MdiIcons.facebook),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://twitter.com/ahnafsakil16'),
                    );
                  },
                  icon: const Icon(MdiIcons.twitter),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://github.com/Ahnaf16'),
                    );
                  },
                  icon: const Icon(MdiIcons.github),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse(
                          'https://www.linkedin.com/in/ahnaf-sakil-8b008622b/'),
                    );
                  },
                  icon: const Icon(MdiIcons.linkedin),
                ),
                IconButton(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
