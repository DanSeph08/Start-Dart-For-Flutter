void main() {
 
    print('hello del programa');
  
    httpGet("http//prueba").then( (value) {
      print(value);
    }).catchError( (error) {
      print("Error $error");
    });
  
    print('hello del programa');
 
}


Future<String> httpGet(String url){
  
  return Future.delayed( const Duration(seconds: 1 ), () {
    
    throw "Error controlado";
    
    //return "Respuesta de pediticion";
    
  });
}