void main() {
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final pato= Pato();
  pato.caminar();
  pato.nadar();
  pato.volar();
  
}


abstract class Animal { 
    
}

abstract class Mamifero extends Animal {
  
} 

abstract class Ave extends Animal {
  
} 

abstract class Pez extends Animal {
  
} 

//Los mixins nos permite dar le funcionalidad extras a las clases, dandole funcionalidad especifica 

//With se refiere a que es un mixin con una especificacion a implementar
mixin Volador {
  void volar () => print("Volar");
} 

mixin Caminante {
  void caminar () => print("caminar");
} 

mixin Nadador {
  void nadar () => print("nadar");
} 

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}


class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Volador, Caminante, Nadador {}


class Tiburon extends Mamifero with Nadador {}
class PezVolador extends Mamifero with Volador, Nadador {}

















