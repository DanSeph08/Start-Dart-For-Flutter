void main() async {
 
    print('hello del programa');
    
  try{
    final value = await httpGet("http//prueba");
    print(value);
  } catch (err) {
    print("Error $err");
  }
 
    
    print('final del programa');
 
}


Future<String> httpGet(String url) async {
  
  await Future.delayed( const Duration(seconds: 1 ));
  
  throw "Error peticion";
  
  //return "Valor de retorno de la peticion";
 
}