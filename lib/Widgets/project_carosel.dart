import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/export_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCarosel extends StatelessWidget {
  const ProjectCarosel({
    Key? key,
    required this.title,
    required this.url1,
    this.url2,
    required this.icon1,
    this.icon2,
    required this.itemCount,
    required this.imgs,
    this.viewportFraction = 0.7,
    this.initialPage = 0,
    this.enableInfiniteScroll = true,
    this.disableCenter = false,
    this.isAsset = false,
  }) : super(key: key);
  final String title;
  final double? viewportFraction;
  final int? initialPage;
  final bool? enableInfiniteScroll;
  final bool? disableCenter;
  final String url1;
  final String? url2;
  final IconData icon1;
  final IconData? icon2;
  final int itemCount;
  final List<String> imgs;
  final bool isAsset;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline4,
              ),
              openInButtons(30.0),
            ],
          ),
          slider(),
          const Divider(
            height: 50,
          )
        ],
      ),
      phone: Column(
        children: [
          Wrap(
            runSpacing: 10,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline5,
              ),
              openInButtons(22.0),
            ],
          ),
          slider(),
          const Divider(
            height: 50,
          )
        ],
      ),
    );
  }

  Row openInButtons(iconSize) {
    return Row(
      children: [
        sideButton(url2, icon2, iconSize),
        url2 == null ? const SizedBox() : const SizedBox(width: 20),
        url2 == null
            ? const SizedBox()
            : sideButton(
                url1,
                icon1,
                iconSize,
              ),
      ],
    );
  }

  MouseRegion sideButton(url, icon, iconSize) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: IconButton(
        onPressed: () {
          launchUrl(
            Uri.parse(url),
          );
        },
        icon: Icon(
          icon,
          size: iconSize,
        ),
      ),
    );
  }

  CarouselSlider slider() {
    return CarouselSlider.builder(
      itemCount: itemCount,
      options: CarouselOptions(
        scrollPhysics: const BouncingScrollPhysics(),
        disableCenter: disableCenter!,
        enableInfiniteScroll: enableInfiniteScroll!,
        aspectRatio: 3,
        viewportFraction: viewportFraction!,
        initialPage: initialPage!,
      ),
      itemBuilder: (context, index, realindex) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: isAsset
              ? Image.asset(
                  imgs[index],
                  fit: BoxFit.cover,
                )
              : CachedNetworkImage(
                  imageUrl: imgs[index],
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(
                      value: downloadProgress.progress,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
