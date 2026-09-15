import 'package:get/get.dart';
import '../model/patrimonios.dart';
import '../service/patrimonios_service.dart';

class PatrimonioControler extends GetxController {

  final service = PatrimoniosService();
  var patrimonios = <Patrimonios>[].obs; //Lista de patrimonios
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    todos_patrimonios();
    }

  Future<void> todos_patrimonios() async{ 
    try {

      isLoading.value = true;
      final response = await service.todos_patrimonios();

      if(response.isOk) {
        response.body;
      }
      
    } catch(e) {
      Get.snackbar("erro", "erro ao carregar os dados");
    }
    finally {
      isLoading.value = false;
    }

    final response = await service.todos_patrimonios();

    if(!response.isOk) {

    }

    patrimonios.value = response.body ?? [];

    isLoading.value = false;
  }

  Future<void> mostrar_patrimonio(String id) async{
    isLoading.value = true;

    final response = await service.mostrar_patrimonio(id);
    var patrimonioSelecionado = Rxn<Patrimonios>();

    isLoading.value = false;
  }

  Future<void> postar(Patrimonios patrimonio
  ) async{
    await service.postar(patrimonio);
  }

  Future<void> editar(Patrimonios patrimonio, String id
  ) async{
    await service.editar(patrimonio, id);
  }

  Future<void> deletar(String id) async{
    await service.deletar(id);
  }

}