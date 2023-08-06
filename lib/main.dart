import 'package:cached_query_flutter/cached_query_flutter.dart';
import 'package:cached_storage/cached_storage.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  CachedQuery.instance.configFlutter(
    config: QueryConfigFlutter(
      refetchDuration: const Duration(seconds: 60),
    ),
    storage: await CachedStorage.ensureInitialized(),
  );

  runApp(const App());
}
