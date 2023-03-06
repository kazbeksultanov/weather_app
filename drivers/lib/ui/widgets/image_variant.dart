import 'package:cached_network_image/cached_network_image.dart';
import 'package:drivers/image_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImageVariantContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final ImageVariant image;
  final Widget Function(BuildContext context, String url)? placeholder;
  final Widget Function(BuildContext context, String url, Object? error)?
      errorWidget;
  final Color? color;

  const AppImageVariantContainer(
    this.image, {
    this.height,
    this.width,
    this.placeholder,
    this.errorWidget,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: image.match(
        asset: (asset) => Image.asset(asset!, color: color),
        svg: (svg) => SvgPicture.asset(svg!, color: color),
        network: (url) {
          if (url!.endsWith('.svg')) {
            try {
              return SvgPicture.network(
                url,
                color: color,
                height: height,
                width: width,
              );
            } catch (e, s) {
              debugPrint('$e \n$s');
              return const Icon(Icons.error);
            }
          } else {
            return CachedNetworkImage(
              imageUrl: url,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                  color: color,
                ),
              ),
              placeholder: placeholder ??
                  (context, url) => const CircularProgressIndicator(),
              errorWidget: errorWidget ??
                  (context, url, error) => const Icon(Icons.error),
            );
          }
        },
        file: (file) => Image.file(file!, color: color),
      ),
    );
  }
}
