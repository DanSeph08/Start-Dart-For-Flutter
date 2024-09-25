void main() {

  final Hero wolverine = Hero(name: "Logan", power: "Regeneracion");
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
}

class Hero {
  
  // Para hacer la propiedad opcional se coloca ? en el tipo de dato
  String? name;
  String power = "Steight";
  
  // El constructor de la clase tiene exactamente el mismo nombre de la clase 
  // Primera forma de constructor
  
  //Hero ( String pName, String pPower ) {
      //name = pName;
      //power = pPower;
  //}
  
  //Tambien se puede con : 
  //Hero ( String pName, String pPower ) 
   //: name = pName,
    //power = pPower;
  
 // Forma mas reducida 
 Hero({
   required this.name, 
   this.power = "Sin Poder"
   
   });
  
  @override
  String toString(){
    return "$name - $power";
  }
  
  
  
}