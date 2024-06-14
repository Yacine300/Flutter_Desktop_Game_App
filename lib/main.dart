import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';

import 'view/my_app.dart';

void main() {
  MediaKit.ensureInitialized();
  ();

  // USE package:video_player NORMALLY!
  runApp(MyApp());
}
