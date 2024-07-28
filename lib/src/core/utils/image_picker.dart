import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagesPicker {
  // Future method to pick an image from the gallery or camera
  static Future<void> pickImageFromSource({
    required CroppedFile? imagefile,
    required ImageSource imageSource, // Image source (camera or gallery)
    required int imageQuality,
  }) async {
    PermissionStatus permissionStatus;

    // Check the permission status based on the source
    if (imageSource == ImageSource.camera) {
      permissionStatus = await Permission.camera.request();
    } else {
      permissionStatus = await Permission.photos.request();
    }

    // Handle different permission statuses
    if (permissionStatus == PermissionStatus.granted) {
      // Use ImagePicker to pick an image
      final ImagePicker picker = ImagePicker();
      // Pick image from source
      final XFile? pickedImage = await picker.pickImage(
        source: imageSource,
        preferredCameraDevice: CameraDevice.front,
        imageQuality: imageQuality,
      );

      if (pickedImage != null) {
        // If image is picked
        // Crop the selected image using the ImageCropper package
        final CroppedFile? croppedFile = await ImageCropper().cropImage(
          sourcePath: pickedImage.path,
          aspectRatio: const CropAspectRatio(ratioX: 1.0, ratioY: 1.0),
          maxHeight: 145,
          maxWidth: 145,
        );

        // Update the image file reference
        imagefile = croppedFile;
      }
    } else {
      // Handle the case when permission is denied
      // TODO: Show permission denied dialog
    }
  }
}
