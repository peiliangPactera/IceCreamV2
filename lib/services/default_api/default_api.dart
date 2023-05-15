import 'package:flutter_waff/flutter_waff.dart';

import '../../configs/env.dart';

Http? _http;

Http get defaultApi {
  if (_http == null) {
    _http = Http.getInstances(Env.getApiOptions(ApiName.DEFAULT));
  }

  return _http!;
}
