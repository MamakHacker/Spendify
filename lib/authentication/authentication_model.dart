import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthenticationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for signInEmailAddress widget.
  TextEditingController? signInEmailAddressController;
  String? Function(BuildContext, String?)?
      signInEmailAddressControllerValidator;
  // State field(s) for signInPassword widget.
  TextEditingController? signInPasswordController;
  late bool signInPasswordVisibility;
  String? Function(BuildContext, String?)? signInPasswordControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for username widget.
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for passwordRetype widget.
  TextEditingController? passwordRetypeController;
  late bool passwordRetypeVisibility;
  String? Function(BuildContext, String?)? passwordRetypeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    signInPasswordVisibility = false;
    passwordVisibility = false;
    passwordRetypeVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    signInEmailAddressController?.dispose();
    signInPasswordController?.dispose();
    usernameController?.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    passwordRetypeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
