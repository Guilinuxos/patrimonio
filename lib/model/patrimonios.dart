class Patrimonios {
  final int? id;
  final String n_do_inventario;
  final String descricao;
  final String local;
  final String responsavel;
  final DateTime? data_de_registro;

  Patrimonios({
    this.id,
    required this.n_do_inventario,
    required this.descricao,
    required this.local,
    required this.responsavel,
    this.data_de_registro,
  });

  /*
    From JSON e To JSON

    Map<String, dynamic>

    String = tipo da chave
    dynamic = tipo do valor
  */

  factory Patrimonios.fromJson(Map<String, dynamic> json) {
    return Patrimonios(
      id: json['id'],
      n_do_inventario: json['n_do_inventario'],
      descricao: json['descricao'],
      local: json['local'],
      responsavel: json['responsavel'],
      data_de_registro: json['data_de_registro'] != null
          ? DateTime.parse(json['data_de_registro'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'n_do_inventario': n_do_inventario,
      'descricao': descricao,
      'local': local,
      'responsavel': responsavel,
    };
  }
}
