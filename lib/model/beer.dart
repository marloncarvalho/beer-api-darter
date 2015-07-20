library beer.models;

class Type {
  int id;
  String name;
  List<Beer> beers;
}

class Beer {
  int id;
  String name;
  Type type;

  Beer({this.id, this.name, this.type});
}