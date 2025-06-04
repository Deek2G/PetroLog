import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'update_vehicle_page_widget.dart' show UpdateVehiclePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateVehiclePageModel extends FlutterFlowModel<UpdateVehiclePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for make widget.
  String? makeValue;
  FormFieldController<String>? makeValueController;
  // State field(s) for model widget.
  FocusNode? modelFocusNode;
  TextEditingController? modelTextController;
  String? Function(BuildContext, String?)? modelTextControllerValidator;
  String? _modelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for year widget.
  String? yearValue;
  FormFieldController<String>? yearValueController;
  // State field(s) for gas_type widget.
  String? gasTypeValue;
  FormFieldController<String>? gasTypeValueController;

  @override
  void initState(BuildContext context) {
    modelTextControllerValidator = _modelTextControllerValidator;
  }

  @override
  void dispose() {
    modelFocusNode?.dispose();
    modelTextController?.dispose();
  }
}
