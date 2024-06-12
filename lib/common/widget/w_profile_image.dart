import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ProfileImage extends StatelessWidget {
  final String? photoUrl;
  final double width;
  final double height;

  const ProfileImage({
    Key? key,
    required this.photoUrl,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: photoUrl != null
          ? CachedNetworkImage(
        imageUrl: photoUrl!,
        height: height,
        width: width,
        fit: BoxFit.cover,
      )
          : Image.asset(
        '$basePath/icon/colorHama.png',
        width: width,
        height: height,
      ),
    );
  }
}
