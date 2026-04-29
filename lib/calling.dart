import 'package:flutter/material.dart';
import 'package:flutter_application_2/consttant.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math';
class Calling
    extends
        StatefulWidget {
  final callarid;
  Calling({
    super.key,
    this.callarid,
  });

  @override
  State<
    Calling
  >
  createState() =>
      _CallingState();
}

class _CallingState
    extends
        State<
          Calling
        > {
  int
  userid = Random().nextInt(
    10000,
  );

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return ZegoUIKitPrebuiltCall(
      appID: Appinfo.appid, 
      appSign: Appinfo.appsign,
      userID: userid.toString(),
      userName: 'username$userid',
      callID: widget.callarid,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
