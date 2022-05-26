import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../Widgets/export_widget.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
    required this.scrollCtrl,
  }) : super(key: key);

  final List<String> apImgs = const [
    'assets/imgs/addProduct.png',
    'assets/imgs/orderlist.png',
    'assets/imgs/orderInfo.png',
    'assets/imgs/flash.png',
  ];
  final List<String> gngImgs = const [
    'assets/imgs/1.png',
    'assets/imgs/2.png',
    'assets/imgs/3.png',
    'assets/imgs/4.png',
    'assets/imgs/5.png',
    'assets/imgs/6.png',
    'assets/imgs/7.png',
  ];
  final ScrollController scrollCtrl;
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        child: Card(
          child: SingleChildScrollView(
            controller: scrollCtrl,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'My Projects',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 30),
                  ProjectCarosel(
                    title: 'Gadget N Gadget (collaboration)',
                    url1:
                        'https://play.google.com/store/apps/details?id=com.gng.android&hl=en&gl=US',
                    url2: 'https://github.com/jakirahamed',
                    icon1: MdiIcons.googlePlay,
                    icon2: Icons.group,
                    imgs: gngImgs,
                    initialPage: 2,
                    itemCount: gngImgs.length,
                    viewportFraction: .18,
                    enableInfiniteScroll: false,
                    disableCenter: true,
                    isAsset: true,
                  ),
                  ProjectCarosel(
                    title: 'Admin panal',
                    url1: 'https://github.com/Ahnaf16/admin_panal',
                    url2: 'https://ahnaf16.github.io/admin_panal/',
                    isAsset: true,
                    icon1: MdiIcons.sourceBranch,
                    icon2: Icons.open_in_new,
                    imgs: apImgs,
                    itemCount: apImgs.length,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      phone: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        child: Card(
          child: SingleChildScrollView(
            controller: scrollCtrl,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'My Projects',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: 30),
                  ProjectCarosel(
                    title: 'Gadget N Gadget (collaboration)',
                    url1:
                        'https://play.google.com/store/apps/details?id=com.gng.android&hl=en&gl=US',
                    url2: 'https://github.com/jakirahamed',
                    icon1: MdiIcons.googlePlay,
                    icon2: Icons.group,
                    imgs: gngImgs,
                    initialPage: 2,
                    itemCount: gngImgs.length,
                    viewportFraction: .18,
                    enableInfiniteScroll: false,
                    disableCenter: true,
                    isAsset: true,
                  ),
                  ProjectCarosel(
                    title: 'Admin panal',
                    url1: 'https://github.com/Ahnaf16/admin_panal',
                    url2: 'https://ahnaf16.github.io/admin_panal/',
                    isAsset: true,
                    icon1: MdiIcons.sourceBranch,
                    icon2: Icons.open_in_new,
                    imgs: apImgs,
                    itemCount: apImgs.length,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
