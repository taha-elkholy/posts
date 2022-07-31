import 'dart:io';

import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key, required this.profileImage}) : super(key: key);
  final File profileImage;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.file(profileImage, fit: BoxFit.cover),
    );
  }
}
