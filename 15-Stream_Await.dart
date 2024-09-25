void main() {

emitNumbers().listen( (value) {
  
  print("Stream value: $value");
  
});

}


//async* funcion asincrona que devuelve un Stream
Stream emitNumbers() async* {
  
  final valuesEmit= [1,2,3,4,5];
  
  for(int i in valuesEmit){
    await Future.delayed( const Duration(seconds: 1));
    
    // Funciona como seder un valor como pasar el valor 
    yield i;
  }
}