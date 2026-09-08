import '../model/patrimonios.dart';
import 'package:get/get.dart';

class PatrimoniosService extends GetConnect {

    Future<Response<List<Patrimonios>>> todos_patrimonios(){
        return get('http://localhost:8080/api/v1/patrimonios',
        decoder: (dados) => decoder(dados['data']['patrimonios']));
    }

    Future<Response> mostrar_patrimonio(String id){
        return get('http://localhost:8080/api/v1/patrimonios/$id',);
    }

    Future<Response> postar(Patrimonios patrimonio){
        return post('http://localhost:8080/api/v1/patrimonios',
      patrimonio.toJson(),);
    }

    Future<Response> editar(Patrimonios patrimonio, String id){
        return put(
      'http://localhost:8080/api/v1/patrimonios/$id',
      patrimonio.toJson(),
    );
    }

    Future<Response> deletar(String id){
        return delete('http://localhost:8080/api/v1/patrimonios/$id',
    );
    }
    
    // DECODER
  List<Patrimonios> decoder(List dados) {
    return dados
        .map((json) => Patrimonios.fromJson(json))
        .toList();
  }
}