import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cupertino_store/model/app_state_model.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  return runApp(
    ChangeNotifierProvider(
      builder: (context) => AppStateModel(),
      child: CupertinoStoreApp(),
    ),
  );
}
