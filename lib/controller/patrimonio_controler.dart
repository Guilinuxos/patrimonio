import 'package:get/get.dart';
import '../model/patrimonios.dart';
import '../service/patrimonios_service.dart';

class PatrimonioControler extends GetxController {

  final PatrimoniosService service = PatrimoniosService();

  var patrimonios = <Patrimonios>[].obs;
  var carregando = false.obs;

  @override
  void onInit(){
    super.onInit();

    buscarPatrimonios();
  }

  Future<void> buscarPatrimonios() async{
    carregando.value = true;

    final response = await service.todos_patrimonios();

    if(response.isOk) {
      patrimonios.value = response.body ?? [];
    }

    carregando.value = false;
  }
}