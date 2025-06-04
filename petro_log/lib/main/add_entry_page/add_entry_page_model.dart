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
import 'add_entry_page_widget.dart' show AddEntryPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddEntryPageModel extends FlutterFlowModel<AddEntryPageWidget> {
  ///  Local state fields for this page.

  double fuelAmount = 0.0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for vehicle widget.
  String? vehicleValue;
  FormFieldController<String>? vehicleValueController;
  // State field(s) for totalcost widget.
  FocusNode? totalcostFocusNode;
  TextEditingController? totalcostTextController;
  String? Function(BuildContext, String?)? totalcostTextControllerValidator;
  String? _totalcostTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for priceperliter widget.
  FocusNode? priceperliterFocusNode;
  TextEditingController? priceperliterTextController;
  String? Function(BuildContext, String?)? priceperliterTextControllerValidator;
  String? _priceperliterTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for currentodometer widget.
  FocusNode? currentodometerFocusNode;
  TextEditingController? currentodometerTextController;
  String? Function(BuildContext, String?)?
      currentodometerTextControllerValidator;
  String? _currentodometerTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for gasstation widget.
  String? gasstationValue;
  FormFieldController<String>? gasstationValueController;

  @override
  void initState(BuildContext context) {
    totalcostTextControllerValidator = _totalcostTextControllerValidator;
    priceperliterTextControllerValidator =
        _priceperliterTextControllerValidator;
    currentodometerTextControllerValidator =
        _currentodometerTextControllerValidator;
  }

  @override
  void dispose() {
    totalcostFocusNode?.dispose();
    totalcostTextController?.dispose();

    priceperliterFocusNode?.dispose();
    priceperliterTextController?.dispose();

    currentodometerFocusNode?.dispose();
    currentodometerTextController?.dispose();
  }
}
