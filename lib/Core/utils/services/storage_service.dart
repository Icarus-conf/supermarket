import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> uploadImage(String userId, XFile image) async {
    final ref = _storage.ref().child('user_images/$userId/${image.name}');
    final uploadTask = ref.putFile(File(image.path));
    final snapshot = await uploadTask;
    return await snapshot.ref.getDownloadURL();
  }
}
