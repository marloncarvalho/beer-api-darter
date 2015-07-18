library beer;

import 'package:darter/darter.dart';
import 'package:beer/api/v1/api.dart';
import 'package:beer/api/v1/interceptors.dart';

main() {
  new DarterServer()
    ..addApi(new Base())
    ..addInterceptor(new Authentication())
    ..addInterceptor(new Cors())
    ..start();
}