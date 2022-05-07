// ignore_for_file: file_names

import 'package:lab9/routes/routes.dart';
import 'package:lab9/pages/homePages.dart';

class AppPages {
  static final pageto = {
    AppRoutes.initial: (context) => const HomePages(),
    AppRoutes.quality: (context) => const HomePages(),
  };
}
