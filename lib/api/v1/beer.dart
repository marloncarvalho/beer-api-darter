library beer.api.v1.beer;

import 'package:darter/darter.dart';
import 'package:beer/model/beer.dart';

@API(path: 'beers')
class BeerAPI {

  @GET(path: ':id/photo')
  @MediaType(consume: MediaType.XML, produce: MediaType.XML)
  String photo() {
    return "photo";
  }

  @GET(path: ':id')
  Beer getById(Map pathParams) {
    return Beer.get(int.parse(pathParams['id']));
  }

  @POST()
  Beer create(Beer beer) {
    beer.save();
    return beer;
  }

  @DELETE(path: ':id')
  void delete(Map pathParams) {
    Beer.get(int.parse(pathParams['id'])).delete();
  }

  @PUT(path: ':id')
  Response put(Map pathParams, Beer beer) {
    Response response = new Response();
    Beer localBeer = Beer.get(int.parse(pathParams['id']));

    if (localBeer == null) {
      response.statusCode = 201;
    } else {
      response.statusCode = 200;
    }

    beer.save();
    response.entity = beer;

    return response;
  }

}