void main() {
  
  final mySquare = Square( side: -10); 
  
  try {
    mySquare.side = -5;
  } catch (e) {
    print("Error: $e");
  }
  
  print("Area = ${ mySquare.area }");
  
}

class Square {
  //Para hacer una propiedad privada se coloca al inicio _
  double _side; //side * side
  
  //Se recomiendo que primero vayan las aserciones y luego las asignaciones en el constructor
  Square({ required double side })
    : assert(side >= 0, "Side must be >= 0"),
      _side = side;
  
  double get area{
    return _side * _side;
  }
  
  set side(double value){
    print("Setting new value $value");
    if(value < 0) throw "Value must be >= 0";
    
    _side = value;
  }
  
  double calculateArea(){
    return _side * _side;
  }
}