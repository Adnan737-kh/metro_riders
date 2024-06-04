import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:metro_riders/styles.dart';

class CustomImageView extends StatelessWidget {

  String? imagePath;
  double? height;
  double? width;
  Color? color;
  BoxFit? fit;
  final String? placeHolder;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? marin;
  BorderRadius? borderRadius;
  BoxBorder? border;

  CustomImageView({
    super.key,
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.borderRadius,
    this.marin,
    this.border,
    this.placeHolder,
  });
  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildWidget(),
          )
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: marin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: _buildCircleImage(),
      ),
    );
  }

  _buildCircleImage() {
    if (borderRadius != null) {
      return ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: _buildImageWithBorder(),
      );
    }else{
      _buildImageWithBorder();
    }
  }

  _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: borderRadius,
        ),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    if (imagePath != null) {
      switch (imagePath!.imageType) {
        case ImageType.svg:
          return Container(
            height: height,
            width: width,
            child: SvgPicture.asset(
              imagePath!,
              height: height,
              width: width,
              fit: fit ?? BoxFit.cover,
              color: color,
            ),
          );
        case ImageType.file:
          return Image.file(
            File(imagePath!),
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
        case ImageType.network:
          CachedNetworkImage(
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
            imageUrl: imagePath!,
            placeholder: (context, url) => Container(
              height: 30,
              width: 30,
              child: const LinearProgressIndicator(
                color: Styles.appThemeColor,
                backgroundColor: Styles.appThemeColor,
              ),
            ),
            errorWidget: (context, url, error) => Image.asset(
              placeHolder!,
              height: height,
              width: width,
              fit: fit ?? BoxFit.cover,
            ),
          );
        case ImageType.png:
        default:
          return Image.asset(
            imagePath!,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
          );
      }
    }
    return const SizedBox();
  }
}

extension ImageTypeExtenion on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) {
      return ImageType.network;
    } else if (endsWith('svg')) {
      return ImageType.svg;
    } else if (endsWith('file//')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, network, file, unknown }
