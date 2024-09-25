void main () {
  final String pokemon = 'Pikachu';
  final int hp = 100; 
  final bool isAlive = true;
  final List<String> abilities = ["impostor"];
  final sprites = <String>["pikachu/front.png", "pikachu/back.png" ];
  
    //Dymanic puede ser cualquier tipo de dato pero por defecto es null
    // dynamic == null
  
    dynamic errorMessage = "Error";
    errorMessage = true;
    errorMessage = [1,2,3,4,5];
    errorMessage = {1,2,3,4,5};
    errorMessage = () => true;
    errorMessage = null;
   
  
   print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
    
   """);
}