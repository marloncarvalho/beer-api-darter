library beer.api.v1.interceptors;

import 'package:darter/darter.dart';

@Interceptor(when:Interceptor.BEFORE, priority: 1)
class Authentication {

  void intercept(Chain chain) {
    String token = chain.request.headers["x-token"];
    if (token != "Test") {
      chain.abort(new Response()
        ..body = "{\"error\":\"Permission Denied\"}"
        ..statusCode = 401);
    }
  }
}

@Interceptor(when: Interceptor.AFTER, priority: 1)
class Cors {

  void intercept(Chain chain) {
    chain.response.headers["Access-Control-Allow-Origin"] = "*";
    chain.response.headers["Access-Control-Allow-Credentials"] = "true";
    chain.response.headers["Access-Control-Allow-Methods"] = "GET, POST, DELETE, PUT";
    chain.response.headers["Access-Control-Allow-Headers"] = "*";
  }

}