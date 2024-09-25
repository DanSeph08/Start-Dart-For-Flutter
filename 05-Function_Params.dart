void main() {
  
  print(greetEveryone() );
  print("Suma ${addTwoNumbers( 10, 20)}" );
  print( greetPerson(name: "Daniel", message: "Bienvenido") );
  
}


// Dentro de una funcion flecha no permite las llaves con return
String greetEveryone() => "Hello everyone";

int addTwoNumbers( int a, int b) {
  return a + b;
}

int addTwoNumbersArrow(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  
  //b = b ?? 0;
  //b ??= 0;
  
  return a + b;
}

// Cuando son parametros o argumentos dentro de llaves son opcionales como en JS
// Le puede asignar algo por defecto, si es undefined o null 
String greetPerson ({ required String name, String  message = "Hola, " }) {
  return "$message $name";
}
