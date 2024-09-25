void main() async {
 
    print('hello del programa');
    
  try{
    final value = await httpGet("http//prueba");
    print("exito $value");
  } on Exception catch(err) {
    // Me permite manejar el tipo de error que le enviemos 
    print("Tenemos una exception $err");
  } catch (err) {
    print("Error catch $err");
  } finally {
    print("Fin del trycatch");
  }
 
    
    print('final del programa');
 
}


Future<String> httpGet(String url) async {
  
  await Future.delayed( const Duration(seconds: 1 ));
  
  throw Exception("No hay datos");
  
  //throw "Error peticion";
  
  //return "Valor de retorno de la peticion";
 
}