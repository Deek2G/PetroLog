import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'fuel_entry_page_widget.dart' show FuelEntryPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FuelEntryPageModel extends FlutterFlowModel<FuelEntryPageWidget> {
  ///  Local state fields for this page.

  int? entries = 0;

  String searchQuery = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
