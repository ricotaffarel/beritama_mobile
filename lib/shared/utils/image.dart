import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadUtil {
  static Future<List<File>> pickImages(BuildContext context,
      {int maxImages = 5}) async {
    List<File> selectedImages = [];

    for (int i = 0; i < maxImages; i++) {
      final XFile? pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedImage == null) {
        // User canceled image picking
        break;
      }

      selectedImages.add(File(pickedImage.path));
    }

    return selectedImages;
  }

  // Add your image upload logic here
  static Future<void> uploadImages(List<File> images) async {
    // Implement your image upload logic, for example, using Firebase Storage or any other backend service.
    // This is just a placeholder for demonstration purposes.
    for (File image in images) {
      // Your upload logic for each image
      print('Uploading ${image.path}');
    }
  }
}
