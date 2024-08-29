// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/firebase_storage/storage.dart';

Future<List<String>> uploadImageToFirebase(
  String path,
  List<FFUploadedFile> imageList,
) async {
  // Add your function code here!
  List<String> urlList = [];
  for (var i = 0; i < imageList.length; i++) {
    String newPath = '$path/${imageList[i].name}';
    Uint8List image = imageList[i].bytes!;
    var url = await uploadData(newPath, image);
    if (url != null) {
      urlList.add(url);
    }
  }
  return urlList;
}
