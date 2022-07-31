import 'dart:io';

class UploadImageParam {
  final File image;
  final String path;

  const UploadImageParam({
    required this.image,
    required this.path,
  });
}
