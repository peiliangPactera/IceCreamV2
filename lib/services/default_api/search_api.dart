import 'package:flutter_waff/flutter_waff.dart';

import '../../entities/repository_entity.dart';
import 'default_api.dart';

abstract class SearchApi {
  /// The structure of params.query
  /// ```
  /// {
  ///   'q': String,
  ///   'page': int? default 1,
  ///   'per_page': int? default 20,
  ///   'order': String? default 'desc',
  /// }
  /// ```
  static final repositories =
      buildHttpRunner<List<RepositoryEntity>>((HttpRunnerParams params) async {
    var res = await defaultApi.get(
      '/search/repositories',
      queryParameters: params.query,
      cancelToken: params.cancelToken,
    );

    return buildEntityList<RepositoryEntity>(
        res.data, (item) => RepositoryEntity.fromJson(item));
  });
}
