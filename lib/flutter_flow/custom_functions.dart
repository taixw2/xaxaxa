import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String? findWarehouseIdFN(
  String shopId,
  List<WarehouseDTStruct> warehouseList,
) {
  for (var warehouse in warehouseList) {
    if (warehouse.source_id == shopId) {
      return warehouse.id;
    }
  }
  return null;
}