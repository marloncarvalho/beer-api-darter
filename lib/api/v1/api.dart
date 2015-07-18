import 'package:darter/darter.dart';
import 'package:beer/api/v1/beer.dart';
import 'package:beer/api/v1/type.dart';

@API(path: 'api')
@Version(version: 'v1', using: Using.HEADER, vendor: 'alienlabz', format: Format.JSON)
@MediaType(produce: MediaType.JSON, consume: MediaType.JSON)
class Base {

  @Include()
  BeerAPI beer = new BeerAPI();

  @Include()
  TypeAPI type = new TypeAPI();
}