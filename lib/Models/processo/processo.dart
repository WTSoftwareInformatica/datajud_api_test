class Processo {
  String? numeroProcesso;
  Classe? classe;
  Classe? sistema;
  Classe? formato;
  String? tribunal;
  DateTime? dataHoraUltimaAtualizacao;
  String? grau;
  DateTime? timestamp;
  DateTime? dataAjuizamento;
  List<Movimento>? movimentos;
  String? id;
  int? nivelSigilo;
  OrgaoJulgador? orgaoJulgador;
  List<Assunto>? assuntos;

  Processo({
    this.numeroProcesso,
    this.classe,
    this.sistema,
    this.formato,
    this.tribunal,
    this.dataHoraUltimaAtualizacao,
    this.grau,
    this.timestamp,
    this.dataAjuizamento,
    this.movimentos,
    this.id,
    this.nivelSigilo,
    this.orgaoJulgador,
    this.assuntos,
  });

  factory Processo.fromJson(Map<String, dynamic> json) => Processo(
        numeroProcesso: json["numeroProcesso"],
        classe: json["classe"] == null ? null : Classe.fromJson(json["classe"]),
        sistema:
            json["sistema"] == null ? null : Classe.fromJson(json["sistema"]),
        formato:
            json["formato"] == null ? null : Classe.fromJson(json["formato"]),
        tribunal: json["tribunal"],
        dataHoraUltimaAtualizacao: json["dataHoraUltimaAtualizacao"] == null
            ? null
            : DateTime.parse(json["dataHoraUltimaAtualizacao"]),
        grau: json["grau"],
        timestamp: json["@timestamp"] == null
            ? null
            : DateTime.parse(json["@timestamp"]),
        dataAjuizamento: json["dataAjuizamento"] == null
            ? null
            : DateTime.parse(json["dataAjuizamento"]),
        movimentos: json["movimentos"] == null
            ? []
            : List<Movimento>.from(
                json["movimentos"]!.map((x) => Movimento.fromJson(x))),
        id: json["id"],
        nivelSigilo: json["nivelSigilo"],
        orgaoJulgador: json["orgaoJulgador"] == null
            ? null
            : OrgaoJulgador.fromJson(json["orgaoJulgador"]),
        assuntos: json["assuntos"] == null
            ? []
            : List<Assunto>.from(
            json["assuntos"]!.map((x) => Assunto.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "numeroProcesso": numeroProcesso,
        "classe": classe?.toJson(),
        "sistema": sistema?.toJson(),
        "formato": formato?.toJson(),
        "tribunal": tribunal,
        "dataHoraUltimaAtualizacao":
            dataHoraUltimaAtualizacao?.toIso8601String(),
        "grau": grau,
        "@timestamp": timestamp?.toIso8601String(),
        "dataAjuizamento": dataAjuizamento?.toIso8601String(),
        "movimentos": movimentos == null
            ? []
            : List<dynamic>.from(movimentos!.map((x) => x.toJson())),
        "id": id,
        "nivelSigilo": nivelSigilo,
        "orgaoJulgador": orgaoJulgador?.toJson(),
        "assuntos": assuntos == null
            ? []
            : List<dynamic>.from(assuntos!.map((x) => x.toJson())),
      };
}

class Classe {
  int? codigo;
  String? nome;

  Classe({
    this.codigo,
    this.nome,
  });

  factory Classe.fromJson(Map<String, dynamic> json) => Classe(
        codigo: json["codigo"],
        nome: json["nome"],
      );

  Map<String, dynamic> toJson() => {
        "codigo": codigo,
        "nome": nome,
      };
}

class Assunto {
  int? codigo;
  String? nome;

  Assunto({
    this.codigo,
    this.nome,
  });

  factory Assunto.fromJson(Map<String, dynamic> json) => Assunto(
    codigo: json["codigo"],
    nome: json["nome"],
  );

  Map<String, dynamic> toJson() => {
    "codigo": codigo,
    "nome": nome,
  };
}

class Movimento implements Comparable<Movimento>{
  List<ComplementosTabelado>? complementosTabelados;
  int? codigo;
  String? nome;
  DateTime? dataHora;

  @override
  int compareTo(Movimento other) {
    return this.dataHora!.compareTo(other.dataHora!);
  }

  Movimento({
    this.complementosTabelados,
    this.codigo,
    this.nome,
    this.dataHora,
  });

  factory Movimento.fromJson(Map<String, dynamic> json) => Movimento(
        complementosTabelados: json["complementosTabelados"] == null
            ? []
            : List<ComplementosTabelado>.from(json["complementosTabelados"]!
                .map((x) => ComplementosTabelado.fromJson(x))),
        codigo: json["codigo"],
        nome: json["nome"],
        dataHora:
            json["dataHora"] == null ? null : DateTime.parse(json["dataHora"]),
      );

  Map<String, dynamic> toJson() => {
        "complementosTabelados": complementosTabelados == null
            ? []
            : List<dynamic>.from(complementosTabelados!.map((x) => x.toJson())),
        "codigo": codigo,
        "nome": nome,
        "dataHora": dataHora?.toIso8601String(),
      };

}

class ComplementosTabelado {
  int? codigo;
  int? valor;
  String? nome;
  Descricao? descricao;

  ComplementosTabelado({
    this.codigo,
    this.valor,
    this.nome,
    this.descricao,
  });

  factory ComplementosTabelado.fromJson(Map<String, dynamic> json) =>
      ComplementosTabelado(
        codigo: json["codigo"],
        valor: json["valor"],
        nome: json["nome"],
        descricao: descricaoValues.map[json["descricao"]]!,
      );

  Map<String, dynamic> toJson() => {
        "codigo": codigo,
        "valor": valor,
        "nome": nome,
        "descricao": descricaoValues.reverse[descricao],
      };
}

enum Descricao {
  MOTIVO_DA_REMESSA,
  TIPO_DE_CONCLUSAO,
  TIPO_DE_DISTRIBUICAO_REDISTRIBUICAO,
  TIPO_DE_DOCUMENTO,
  TIPO_DE_PETICAO
}

final descricaoValues = EnumValues({
  "motivo_da_remessa": Descricao.MOTIVO_DA_REMESSA,
  "tipo_de_conclusao": Descricao.TIPO_DE_CONCLUSAO,
  "tipo_de_distribuicao_redistribuicao":
      Descricao.TIPO_DE_DISTRIBUICAO_REDISTRIBUICAO,
  "tipo_de_documento": Descricao.TIPO_DE_DOCUMENTO,
  "tipo_de_peticao": Descricao.TIPO_DE_PETICAO
});

class OrgaoJulgador {
  int? codigoMunicipioIbge;
  int? codigo;
  String? nome;

  OrgaoJulgador({
    this.codigoMunicipioIbge,
    this.codigo,
    this.nome,
  });

  factory OrgaoJulgador.fromJson(Map<String, dynamic> json) => OrgaoJulgador(
        codigoMunicipioIbge: json["codigoMunicipioIBGE"],
        codigo: json["codigo"],
        nome: json["nome"],
      );

  Map<String, dynamic> toJson() => {
        "codigoMunicipioIBGE": codigoMunicipioIbge,
        "codigo": codigo,
        "nome": nome,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
