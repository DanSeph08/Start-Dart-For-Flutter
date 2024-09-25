void main() async {
  //Liste para escuchar al Stream
  emitNumbers().listen( (value) {
    print("Stream value $value");
  });

 
}

//Stream es un flujo de datos de un unico valor, varios valores o ningun valor a lo largo del tiempo
//Stream es una emicion de algo 
Stream<int> emitNumbers(){
  //Se emite periodicamente cada segundo
  return Stream.periodic( const Duration(seconds: 1), (value) {
    print("Desde periodic $value");
    return value;
    //Take para darle la cantidad a emitir 
  }).take(5);
}