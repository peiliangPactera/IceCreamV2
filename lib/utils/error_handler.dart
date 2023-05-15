import 'package:flutter_waff/flutter_waff.dart';
import 'package:get/get.dart';

/// Error handling for [startApp]
void errorHandler(Object error, StackTrace stack) {
  String errorStr = '';
  if (error is HttpError) {
    errorStr = 'http.errorMessage'.trParams({
      'statusCode': error.statusCode.toString(),
      'errorMessage': error.errorMessage ?? 'http.${error.errorCode}'.tr,
    });
  } else {
    errorStr = error.toString();
  }

  showSnackBarError(errorStr);
}
