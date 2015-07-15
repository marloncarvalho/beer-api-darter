library beer;

import 'package:darter/darter.dart';
import 'package:beer/api/v1/beer.dart';
import 'package:beer/api/v1/interceptors.dart';

main() {
  new DarterServer()
    ..addApi(new BeerAPI())
    ..addInterceptor(new Authentication())
    ..addInterceptor(new Cors())
    ..start();
}