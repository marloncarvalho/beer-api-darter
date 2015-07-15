library models.beer;

class Beer {
  int id;
  String name;

  static List<Beer> all() {
    List<Beer> result = [];

    result.add(new Beer()
      ..id = 1
      .. name = "Duvel");

    result.add(new Beer()
      ..id = 2
      .. name = "Delirium Tremens");

    return result;
  }

  static Beer get(int id) {
    return new Beer()
      ..id = id
      ..name = "Beer with ID #${id}";
  }

  void save() {
    this.id = 1000;
  }

  void delete() {

  }

}