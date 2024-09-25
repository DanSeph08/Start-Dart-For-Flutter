void main() {
  final Map<String, dynamic> pokemon = {
    "name" : "Ditto",
    "hp": 100,
    "isAlive": true,
    "abilites": <String>["impostor"],
    "sprites": <int, String>{
      1: "front",
      2: "back"
    }
  };
  
  print(pokemon);
  print("Name: ${ pokemon["name"]}");
  print("sprites: ${ pokemon["sprites"] }");
  print("Front: ${ pokemon["sprites"][1]  }");
  
  
}