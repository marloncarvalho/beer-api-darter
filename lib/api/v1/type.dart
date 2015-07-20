library beer.api.v1.type;

import 'package:darter/darter.dart';
import 'package:beer/model/beer.dart';

@API(path: 'types')
class TypeAPI {

  @GET(path: ':id')
  Beer getById(Map pathParams) {
  }

  @POST()
  Beer create(Beer beer) {
  }

  @DELETE(path: ':id')
  void delete(Map pathParams) {
  }

  @PUT(path: ':id')
  Response put(Map pathParams, Beer beer) {
  }

}