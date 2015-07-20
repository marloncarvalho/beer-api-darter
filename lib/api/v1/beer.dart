library beer.api.v1.beer;

import 'package:darter/darter.dart';
import 'package:beer/model/beer.dart';
import 'dart:async';

@API(path: 'beers')
class BeerAPI {

  @GET()
  List<Beer> list() {
    return [new Beer(id: 1, name: "Beer 1")];
  }

  @GET(path: ':id')
  Future<Beer> getById(Parameters pathParams) async{
    return new Beer(id: 1, name:'Beer 1');
  }

  @POST()
  Beer create(Beer beer) {
    return beer;
  }

  @DELETE(path: ':id')
  void delete(Parameters pathParams) {
  }

  @PUT(path: ':id')
  Response put(Parameters pathParams, Beer beer) {
    Response result = new Response(statusCode: 200);
    result.entity = beer;
    return result;
  }

}