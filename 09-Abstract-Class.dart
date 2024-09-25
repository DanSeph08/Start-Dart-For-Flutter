void main() {

  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant(energyLeft: 1000  );
 
  print("Wind ${ chargePhone( windPlant )}");
  print("Nuclear ${ chargePhone( nuclearPlant )}");
     
}

//Función Cargar teléfono
double chargePhone ( EnergyPlant plant ){
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  return plant.energyLeft -10;
}

//Enumerador
enum PlantType { nuclear, wind, water }

//Clase abstracta
abstract class EnergyPlant {
  
  double energyLeft;
  PlantType type;
  
  EnergyPlant({ 
    
    required this.energyLeft, 
    required this.type
    
   });
  
  void consumeEnergy( double amount );
  
}

//Extender, se hereda todo de la clase padre
class WindPlant extends EnergyPlant {
  
  WindPlant({ required double initialEnergy })
    : super( 
      energyLeft: initialEnergy, 
      type: PlantType.wind
    );
  
  @override
  void consumeEnergy( double amount ){
    energyLeft -= amount;
  }
  
}

//Implements, se hereda algo específico de la clase padre
class NuclearPlant implements EnergyPlant {
  
 @override 
 double energyLeft;
  
 @override
 final PlantType type = PlantType.nuclear;
   
 NuclearPlant({ required this.energyLeft });
   
 @override
 void consumeEnergy( double amount ){
  energyLeft -= (amount * 0.5);
 }
   
}