import 'dart:io';

import 'package:path_provider/path_provider.dart';

/// Get support directory
Future<Directory> get supportDirectory async {
  return _supportDirectory ??= await getApplicationSupportDirectory();
}

Directory? _supportDirectory;
