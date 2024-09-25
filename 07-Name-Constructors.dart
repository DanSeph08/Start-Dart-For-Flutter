void main() {

  final Map<String, dynamic> rawJson = {
    "name": "Tony Stark",
    "power": "Money",
    "isAlive": true
  };
  
  
  final ironMan = Hero.fromJson(rawJson);
  
  //final ironMan = Hero(
  //Hacinedolo asi es posible que retorne null al equivocarse llamando la key 
  //Para arreglarlo puede ser con ??
  //isAlive: rawJson["isAlive2"] ?? false, 
    //power: "Money",
    //name: "Tony Stark"
  //);
  
  
  //final ironMan = Hero(
  //isAlive: false,
    //power: "Money",
    //name: "Tony Stark"
  //);
  
  print(ironMan);
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
    
    Hero({
      required this.name,
      required this.power,
      required this.isAlive
    });
  
    Hero.fromJson( Map<String, dynamic> json)
      //Siempre validar si viene null por seguridad
      : name = json["name"] ?? "No name found",
        power = json["power"] ?? "No power found",
        isAlive = json["isAlive"] ?? "No alive found";
  
  
  @override
  String toString(){
    return "$name, $power,  isAlive ${isAlive ? "YES!" : "Nop"}";
  }
  
  
}