import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<ProjectListRecord> randomProjectList(
    List<ProjectListRecord>? projectList) {
  List<ProjectListRecord> shuffledList = List.from(projectList!);
  final random = math.Random();

  for (int i = shuffledList.length - 1; i > 0; i--) {
    int n = random.nextInt(i + 1);
    final temp = shuffledList[i];
    shuffledList[i] = shuffledList[n];
    shuffledList[n] = temp;
  }

  return shuffledList;
}

List<FFUploadedFile> addListImageToListImage(
  List<FFUploadedFile> currentList,
  List<FFUploadedFile> newList,
) {
  currentList.addAll(newList);
  return currentList;
}
