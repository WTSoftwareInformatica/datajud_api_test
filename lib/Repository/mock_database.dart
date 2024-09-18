import '../Models/Tribunal/tribunal_model.dart';

class MockDatabase {
  final List<Tribunal> tribunais = [
    Tribunal(
        sigla: "TST",
        nome: "Tribunal Superior de Trabalho",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tst/_search"),
    Tribunal(
        sigla: "TSE",
        nome: "Tribunal Superior Eleitoral",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tse/_search"),
    Tribunal(
        sigla: "STJ",
        nome: "Superior Tribunal de Justiça",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_stj/_search"),
    Tribunal(
        sigla: "STM",
        nome: "Superior Tribunal Militar",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_stm/_search"),
    Tribunal(
        sigla: "TRF1",
        nome: "Tribunal Regional Federal da 1ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trf1/_search"),
    Tribunal(
        sigla: "TRF2",
        nome: "Tribunal Regional Federal da 2ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trf2/_search"),
    Tribunal(
        sigla: "TRF3",
        nome: "Tribunal Regional Federal da 3ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trf3/_search"),
    Tribunal(
        sigla: "TRF4",
        nome: "Tribunal Regional Federal da 4ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trf4/_search"),
    Tribunal(
        sigla: "TRF5",
        nome: "Tribunal Regional Federal da 5ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trf5/_search"),
    Tribunal(
        sigla: "TRF6",
        nome: "Tribunal Regional Federal da 6ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trf6/_search"),
    Tribunal(
        sigla: "TRT1",
        nome: "Tribunal Regional do Trabalho da 1ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt1/_search"),
    Tribunal(
        sigla: "TRT2",
        nome: "Tribunal Regional do Trabalho da 2ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt2/_search"),
    Tribunal(
        sigla: "TRT3",
        nome: "Tribunal Regional do Trabalho da 3ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt3/_search"),
    Tribunal(
        sigla: "TRT4",
        nome: "Tribunal Regional do Trabalho da 4ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt4/_search"),
    Tribunal(
        sigla: "TRT5",
        nome: "Tribunal Regional do Trabalho da 5ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt5/_search"),
    Tribunal(
        sigla: "TRT6",
        nome: "Tribunal Regional do Trabalho da 6ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt6/_search"),
    Tribunal(
        sigla: "TRT7",
        nome: "Tribunal Regional do Trabalho da 7ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt7/_search"),
    Tribunal(
        sigla: "TRT8",
        nome: "Tribunal Regional do Trabalho da 8ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt8/_search"),
    Tribunal(
        sigla: "TRT9",
        nome: "Tribunal Regional do Trabalho da 9ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt9/_search"),
    Tribunal(
        sigla: "TRT10",
        nome: "Tribunal Regional do Trabalho da 10ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt10/_search"),
    Tribunal(
        sigla: "TRT11",
        nome: "Tribunal Regional do Trabalho da 11ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt11/_search"),
    Tribunal(
        sigla: "TRT12",
        nome: "Tribunal Regional do Trabalho da 12ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt12/_search"),
    Tribunal(
        sigla: "TRT13",
        nome: "Tribunal Regional do Trabalho da 13ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt13/_search"),
    Tribunal(
        sigla: "TRT14",
        nome: "Tribunal Regional do Trabalho da 14ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt14/_search"),
    Tribunal(
        sigla: "TRT15",
        nome: "Tribunal Regional do Trabalho da 15ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt15/_search"),
    Tribunal(
        sigla: "TRT16",
        nome: "Tribunal Regional do Trabalho da 16ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt16/_search"),
    Tribunal(
        sigla: "TRT17",
        nome: "Tribunal Regional do Trabalho da 17ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt17/_search"),
    Tribunal(
        sigla: "TRT18",
        nome: "Tribunal Regional do Trabalho da 18ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt18/_search"),
    Tribunal(
        sigla: "TRT19",
        nome: "Tribunal Regional do Trabalho da 19ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt19/_search"),
    Tribunal(
        sigla: "TRT20",
        nome: "Tribunal Regional do Trabalho da 20ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt20/_search"),
    Tribunal(
        sigla: "TRT21",
        nome: "Tribunal Regional do Trabalho da 21ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt21/_search"),
    Tribunal(
        sigla: "TRT22",
        nome: "Tribunal Regional do Trabalho da 22ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt22/_search"),
    Tribunal(
        sigla: "TRT23",
        nome: "Tribunal Regional do Trabalho da 23ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt23/_search"),
    Tribunal(
        sigla: "TRT24",
        nome: "Tribunal Regional do Trabalho da 24ª Região",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_trt24/_search"),
    Tribunal(
        sigla: "TREAC",
        nome: "Tribunal Regional Eleitoral do Acre",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-ac/_search"),
    Tribunal(
        sigla: "TREAL",
        nome: "Tribunal Regional Eleitoral de Alagoas",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-al/_search"),
    Tribunal(
        sigla: "TREAM",
        nome: "Tribunal Regional Eleitoral do Amazonas",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-am/_search"),
    Tribunal(
        sigla: "TREAP",
        nome: "Tribunal Regional Eleitoral do Amapá",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-ap/_search"),
    Tribunal(
        sigla: "TREBA",
        nome: "Tribunal Regional Eleitoral da Bahia",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-ba/_search"),
    Tribunal(
        sigla: "TRECE",
        nome: "Tribunal Regional Eleitoral do Ceará",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-ce/_search"),
    Tribunal(
        sigla: "TREDFT",
        nome: "Tribunal Regional Eleitoral do Distrito Federal e Territórios",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-dft/_search"),
    Tribunal(
        sigla: "TREES",
        nome: "Tribunal Regional Eleitoral do Espírito Santo",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-es/_search"),
    Tribunal(
        sigla: "TREMA",
        nome: "Tribunal Regional Eleitoral do Maranhão",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-ma/_search"),
    Tribunal(
        sigla: "TREMG",
        nome: "Tribunal Regional Eleitoral de Minas Gerais",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-mg/_search"),
    Tribunal(
        sigla: "TREMT",
        nome: "Tribunal Regional Eleitoral do Mato Grosso",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-mt/_search"),
    Tribunal(
        sigla: "TREMS",
        nome: "Tribunal Regional Eleitoral do Mato Grosso do Sul",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-ms/_search"),
    Tribunal(
        sigla: "TREPA",
        nome: "Tribunal Regional Eleitoral do Pará",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-pa/_search"),
    Tribunal(
        sigla: "TREPB",
        nome: "Tribunal Regional Eleitoral da Paraíba",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-pb/_search"),
    Tribunal(
        sigla: "TREPE",
        nome: "Tribunal Regional Eleitoral de Pernambuco",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-pe/_search"),
    Tribunal(
        sigla: "TREPI",
        nome: "Tribunal Regional Eleitoral do Piauí",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-pi/_search"),
    Tribunal(
        sigla: "TREPR",
        nome: "Tribunal Regional Eleitoral de Paraná",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-pr/_search"),
    Tribunal(
        sigla: "TRERJ",
        nome: "Tribunal Regional Eleitoral do Rio de Janeiro",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-rj/_search"),
    Tribunal(
        sigla: "TRERN",
        nome: "Tribunal Regional Eleitoral do Rio Grande do Norte",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-rn/_search"),
    Tribunal(
        sigla: "TRERO",
        nome: "Tribunal Regional Eleitoral de Rondônia",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-ro/_search"),
    Tribunal(
        sigla: "TRERR",
        nome: "Tribunal Regional Eleitoral de Roraima",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-rr/_search"),
    Tribunal(
        sigla: "TRERS",
        nome: "Tribunal Regional Eleitoral do Rio Grande do Sul",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-rs/_search"),
    Tribunal(
        sigla: "TRESC",
        nome: "Tribunal Regional Eleitoral de Santa Catarina",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-sc/_search"),
    Tribunal(
        sigla: "TRESP",
        nome: "Tribunal Regional Eleitoral de São Paulo",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-sp/_search"),
    Tribunal(
        sigla: "TRESE",
        nome: "Tribunal Regional Eleitoral do Sergipe",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-se/_search"),
    Tribunal(
        sigla: "TRETO",
        nome: "Tribunal Regional Eleitoral do Tocantins",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tre-to/_search"),
    Tribunal(
        sigla: "TJAC",
        nome: "Tribunal de Justiça do Acre",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjac/_search"),
    Tribunal(
        sigla: "TJAL",
        nome: "Tribunal de Justiça de Alagoas",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjal/_search"),
    Tribunal(
        sigla: "TJAM",
        nome: "Tribunal de Justiça do Amazonas",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjam/_search"),
    Tribunal(
        sigla: "TJAP",
        nome: "Tribunal de Justiça do Amapá",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjap/_search"),
    Tribunal(
        sigla: "TJBA",
        nome: "Tribunal de Justiça da Bahia",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjba/_search"),
    Tribunal(
        sigla: "TJCE",
        nome: "Tribunal de Justiça do Ceará",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjce/_search"),
    Tribunal(
        sigla: "TJDFT",
        nome: "Tribunal de Justiça do Distrito Federal e Territórios",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjdft/_search"),
    Tribunal(
        sigla: "TJES",
        nome: "Tribunal de Justiça do Espírito Santo",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjes/_search"),
    Tribunal(
        sigla: "TJGO",
        nome: "Tribunal de Justiça de Goiás",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjgo/_search"),
    Tribunal(
        sigla: "TJMA",
        nome: "Tribunal de Justiça do Maranhão",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjma/_search"),
    Tribunal(
        sigla: "TJMG",
        nome: "Tribunal de Justiça de Minas Gerais",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjmg/_search"),
    Tribunal(
        sigla: "TJMS",
        nome: "Tribunal de Justiça do Mato Grosso do Sul",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjms/_search"),
    Tribunal(
        sigla: "TJMT",
        nome: "Tribunal de Justiça do Mato Grosso",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjmt/_search"),
    Tribunal(
        sigla: "TJPA",
        nome: "Tribunal de Justiça do Pará",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjpa/_search"),
    Tribunal(
        sigla: "TJPB",
        nome: "Tribunal de Justiça da Paraíba",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjpb/_search"),
    Tribunal(
        sigla: "TJPE",
        nome: "Tribunal de Justiça de Pernambuco",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjpe/_search"),
    Tribunal(
        sigla: "TJPI",
        nome: "Tribunal de Justiça do Piauí",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjpi/_search"),
    Tribunal(
        sigla: "TJPR",
        nome: "Tribunal de Justiça do Paraná",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjpr/_search"),
    Tribunal(
        sigla: "TJRJ",
        nome: "Tribunal de Justiça do Rio de Janeiro",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjrj/_search"),
    Tribunal(
        sigla: "TJRN",
        nome: "Tribunal de Justiça do Rio Grande do Norte",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjrn/_search"),
    Tribunal(
        sigla: "TJRO",
        nome: "Tribunal de Justiça de Rondônia",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjro/_search"),
    Tribunal(
        sigla: "TJRR",
        nome: "Tribunal de Justiça de Roraima",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjrr/_search"),
    Tribunal(
        sigla: "TJRS",
        nome: "Tribunal de Justiça do Rio Grande do Sul",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjrs/_search"),
    Tribunal(
        sigla: "TJSC",
        nome: "Tribunal de Justiça de Santa Catarina",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjsc/_search"),
    Tribunal(
        sigla: "TJSE",
        nome: "Tribunal de Justiça de Sergipe",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjse/_search"),
    Tribunal(
        sigla: "TJSP",
        nome: "Tribunal de Justiça de São Paulo",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjsp/_search"),
    Tribunal(
        sigla: "TJTO",
        nome: "Tribunal de Justiça do Tocantins",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjto/_search"),
    Tribunal(
        sigla: "TJMRS",
        nome: "Tribunal de Justiça Militar do Rio Grande do Sul",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjmrs/_search"),
    Tribunal(
        sigla: "TJMSP",
        nome: "Tribunal de Justiça Militar de São Paulo",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjmsp/_search"),
    Tribunal(
        sigla: "TJMMG",
        nome: "Tribunal de Justiça Militar de Minas Gerais",
        endPoint:
            "https://api-publica.datajud.cnj.jus.br/api_publica_tjmmg/_search"),
  ];

  // Abaixo exemplos de resposta da API para consulta

  get respostaApiNull => {
        "took": 38,
        "timed_out": false,
        "_shards": {"total": 7, "successful": 7, "skipped": 0, "failed": 0},
        "hits": {
          "total": {"value": 0, "relation": "eq"},
          "max_score": null,
          "hits": []
        }
      };

  get respostaApiOk => {
        "took": 78,
        "timed_out": false,
        "_shards": {"total": 3, "successful": 3, "skipped": 0, "failed": 0},
        "hits": {
          "total": {"value": 2, "relation": "eq"},
          "max_score": 13.456066,
          "hits": [
            {
              "_index": "api_publica_tjes",
              "_id": "TJES_G1_00227832220178080024",
              "_score": 13.456066,
              "_source": {
                "numeroProcesso": "00227832220178080024",
                "classe": {"codigo": 7, "nome": "Procedimento Comum Cível"},
                "sistema": {"codigo": -1, "nome": "Inválido"},
                "formato": {"codigo": 2, "nome": "Físico"},
                "tribunal": "TJES",
                "dataHoraUltimaAtualizacao": "2024-08-21T16:11:46.044Z",
                "grau": "G1",
                "@timestamp": "2024-09-17T13:57:41.819731476Z",
                "dataAjuizamento": "2017-08-10T13:24:09.000Z",
                "id": "TJES_G1_00227832220178080024",
                "nivelSigilo": 0,
                "orgaoJulgador": {
                  "codigoMunicipioIBGE": 3205309,
                  "codigo": 4085,
                  "nome": "1ª VARA CÍVEL - VITORIA"
                },
                "assuntos": [
                  {
                    "codigo": 7768,
                    "nome": "Rescisão do contrato e devolução do dinheiro"
                  },
                  {"codigo": 7779, "nome": "Indenização por Dano Moral"},
                  {"codigo": 7780, "nome": "Indenização por Dano Material"}
                ]
              }
            },
            {
              "_index": "api_publica_tjes",
              "_id": "TJES_G2_00227832220178080024",
              "_score": 12.946212,
              "_source": {
                "numeroProcesso": "00227832220178080024",
                "classe": {"codigo": 198, "nome": "Apelação Cível"},
                "sistema": {"codigo": -1, "nome": "Inválido"},
                "formato": {"codigo": 1, "nome": "Eletrônico"},
                "tribunal": "TJES",
                "dataHoraUltimaAtualizacao": "2024-08-20T21:43:11.871Z",
                "grau": "G2",
                "@timestamp": "2024-09-17T20:57:56.632130033Z",
                "dataAjuizamento": "2022-03-24T18:49:27.000Z",
                "movimentos": [
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 2,
                        "valor": 2,
                        "nome": "sorteio",
                        "descricao": "tipo_de_distribuicao_redistribuicao"
                      }
                    ],
                    "codigo": 26,
                    "nome": "Distribuição",
                    "dataHora": "2022-03-24T18:49:27.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 18,
                        "valor": 40,
                        "nome": "outros motivos",
                        "descricao": "motivo_da_remessa"
                      }
                    ],
                    "codigo": 123,
                    "nome": "Remessa",
                    "dataHora": "2022-03-24T18:49:30.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 18,
                        "valor": 40,
                        "nome": "outros motivos",
                        "descricao": "motivo_da_remessa"
                      }
                    ],
                    "codigo": 982,
                    "nome": "Remessa",
                    "dataHora": "2022-03-25T15:43:39.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 4,
                        "valor": 80,
                        "nome": "Outros documentos",
                        "descricao": "tipo_de_documento"
                      }
                    ],
                    "codigo": 60,
                    "nome": "Expedição de documento",
                    "dataHora": "2022-04-05T15:38:08.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 19,
                        "valor": 57,
                        "nome": "Petição (outras)",
                        "descricao": "tipo_de_peticao"
                      }
                    ],
                    "codigo": 85,
                    "nome": "Petição",
                    "dataHora": "2022-04-06T12:58:57.000Z"
                  },
                  {
                    "codigo": 1061,
                    "nome": "Disponibilização no Diário da Justiça Eletrônico",
                    "dataHora": "2022-04-07T00:02:31.000Z"
                  },
                  {
                    "codigo": 92,
                    "nome": "Publicação",
                    "dataHora": "2022-04-07T00:02:41.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 3,
                        "valor": 6,
                        "nome": "para decisão",
                        "descricao": "tipo_de_conclusao"
                      }
                    ],
                    "codigo": 51,
                    "nome": "Conclusão",
                    "dataHora": "2022-04-13T14:23:31.000Z"
                  },
                  {
                    "codigo": 1051,
                    "nome": "Decurso de Prazo",
                    "dataHora": "2022-04-20T15:37:43.000Z"
                  },
                  {
                    "codigo": 1051,
                    "nome": "Decurso de Prazo",
                    "dataHora": "2022-04-20T15:37:43.000Z"
                  },
                  {
                    "codigo": 1051,
                    "nome": "Decurso de Prazo",
                    "dataHora": "2022-04-20T15:37:43.000Z"
                  },
                  {
                    "codigo": 1051,
                    "nome": "Decurso de Prazo",
                    "dataHora": "2022-04-20T15:37:44.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 18,
                        "valor": 37,
                        "nome": "em diligência",
                        "descricao": "motivo_da_remessa"
                      }
                    ],
                    "codigo": 123,
                    "nome": "Remessa",
                    "dataHora": "2022-05-02T11:41:58.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 19,
                        "valor": 57,
                        "nome": "Petição (outras)",
                        "descricao": "tipo_de_peticao"
                      }
                    ],
                    "codigo": 85,
                    "nome": "Petição",
                    "dataHora": "2022-05-11T16:00:04.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 4,
                        "valor": 107,
                        "nome": "Certidão",
                        "descricao": "tipo_de_documento"
                      }
                    ],
                    "codigo": 581,
                    "nome": "Documento",
                    "dataHora": "2022-10-13T13:33:45.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 3,
                        "valor": 6,
                        "nome": "para decisão",
                        "descricao": "tipo_de_conclusao"
                      }
                    ],
                    "codigo": 51,
                    "nome": "Conclusão",
                    "dataHora": "2023-04-14T13:07:00.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 4,
                        "valor": 107,
                        "nome": "Certidão",
                        "descricao": "tipo_de_documento"
                      }
                    ],
                    "codigo": 60,
                    "nome": "Expedição de documento",
                    "dataHora": "2023-06-14T18:48:54.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 3,
                        "valor": 6,
                        "nome": "para decisão",
                        "descricao": "tipo_de_conclusao"
                      }
                    ],
                    "codigo": 51,
                    "nome": "Conclusão",
                    "dataHora": "2023-06-28T15:25:38.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 19,
                        "valor": 57,
                        "nome": "Petição (outras)",
                        "descricao": "tipo_de_peticao"
                      }
                    ],
                    "codigo": 85,
                    "nome": "Petição",
                    "dataHora": "2023-06-28T15:28:56.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 4,
                        "valor": 107,
                        "nome": "Certidão",
                        "descricao": "tipo_de_documento"
                      }
                    ],
                    "codigo": 60,
                    "nome": "Expedição de documento",
                    "dataHora": "2023-07-14T11:36:37.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 3,
                        "valor": 6,
                        "nome": "para decisão",
                        "descricao": "tipo_de_conclusao"
                      }
                    ],
                    "codigo": 51,
                    "nome": "Conclusão",
                    "dataHora": "2023-07-14T11:37:11.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 19,
                        "valor": 57,
                        "nome": "Petição (outras)",
                        "descricao": "tipo_de_peticao"
                      }
                    ],
                    "codigo": 85,
                    "nome": "Petição",
                    "dataHora": "2023-07-19T15:24:22.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 19,
                        "valor": 57,
                        "nome": "Petição (outras)",
                        "descricao": "tipo_de_peticao"
                      }
                    ],
                    "codigo": 85,
                    "nome": "Petição",
                    "dataHora": "2023-08-15T13:14:23.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 3,
                        "valor": 6,
                        "nome": "para decisão",
                        "descricao": "tipo_de_conclusao"
                      }
                    ],
                    "codigo": 51,
                    "nome": "Conclusão",
                    "dataHora": "2023-08-17T13:46:26.000Z"
                  },
                  {
                    "codigo": 1051,
                    "nome": "Decurso de Prazo",
                    "dataHora": "2023-09-05T01:12:40.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 19,
                        "valor": 46,
                        "nome": "Contra-razões",
                        "descricao": "tipo_de_peticao"
                      }
                    ],
                    "codigo": 85,
                    "nome": "Petição",
                    "dataHora": "2024-02-06T23:20:55.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 3,
                        "valor": 6,
                        "nome": "para decisão",
                        "descricao": "tipo_de_conclusao"
                      }
                    ],
                    "codigo": 51,
                    "nome": "Conclusão",
                    "dataHora": "2024-02-07T15:31:42.000Z"
                  },
                  {
                    "codigo": 1061,
                    "nome": "Disponibilização no Diário da Justiça Eletrônico",
                    "dataHora": "2024-04-24T11:35:12.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 3,
                        "valor": 6,
                        "nome": "para decisão",
                        "descricao": "tipo_de_conclusao"
                      }
                    ],
                    "codigo": 51,
                    "nome": "Conclusão",
                    "dataHora": "2024-04-29T15:26:02.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 19,
                        "valor": 57,
                        "nome": "Petição (outras)",
                        "descricao": "tipo_de_peticao"
                      }
                    ],
                    "codigo": 85,
                    "nome": "Petição",
                    "dataHora": "2024-04-29T15:25:06.000Z"
                  },
                  {
                    "codigo": 1061,
                    "nome": "Disponibilização no Diário da Justiça Eletrônico",
                    "dataHora": "2024-06-21T13:26:48.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 19,
                        "valor": 57,
                        "nome": "Petição (outras)",
                        "descricao": "tipo_de_peticao"
                      }
                    ],
                    "codigo": 85,
                    "nome": "Petição",
                    "dataHora": "2024-07-02T13:58:42.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 4,
                        "valor": 80,
                        "nome": "Outros documentos",
                        "descricao": "tipo_de_documento"
                      }
                    ],
                    "codigo": 581,
                    "nome": "Documento",
                    "dataHora": "2024-07-12T15:42:11.000Z"
                  },
                  {
                    "codigo": 238,
                    "nome": "Provimento em Parte",
                    "dataHora": "2024-07-29T12:56:09.000Z"
                  },
                  {
                    "codigo": 239,
                    "nome": "Não-Provimento",
                    "dataHora": "2024-07-29T12:56:09.000Z"
                  },
                  {
                    "complementosTabelados": [
                      {
                        "codigo": 19,
                        "valor": 49,
                        "nome": "Embargos de declaração",
                        "descricao": "tipo_de_peticao"
                      }
                    ],
                    "codigo": 85,
                    "nome": "Petição",
                    "dataHora": "2024-08-08T15:21:25.000Z"
                  },
                  {
                    "codigo": 981,
                    "nome": "Recebimento",
                    "dataHora": "2022-03-24T18:49:30.000Z"
                  },
                  {
                    "codigo": 132,
                    "nome": "Recebimento",
                    "dataHora": "2022-03-25T15:43:39.000Z"
                  },
                  {
                    "codigo": 11010,
                    "nome": "Mero expediente",
                    "dataHora": "2022-04-13T17:48:20.000Z"
                  },
                  {
                    "codigo": 12215,
                    "nome": "Processo devolvido à Secretaria",
                    "dataHora": "2022-04-13T17:48:23.000Z"
                  },
                  {
                    "codigo": 132,
                    "nome": "Recebimento",
                    "dataHora": "2023-04-14T13:06:30.000Z"
                  },
                  {
                    "codigo": 11010,
                    "nome": "Mero expediente",
                    "dataHora": "2023-04-20T14:20:49.000Z"
                  },
                  {
                    "codigo": 12215,
                    "nome": "Processo devolvido à Secretaria",
                    "dataHora": "2023-04-20T14:20:52.000Z"
                  },
                  {
                    "codigo": 11010,
                    "nome": "Mero expediente",
                    "dataHora": "2023-06-29T17:37:39.000Z"
                  },
                  {
                    "codigo": 12215,
                    "nome": "Processo devolvido à Secretaria",
                    "dataHora": "2023-06-29T17:37:41.000Z"
                  },
                  {
                    "codigo": 11010,
                    "nome": "Mero expediente",
                    "dataHora": "2023-07-18T17:14:12.000Z"
                  },
                  {
                    "codigo": 12215,
                    "nome": "Processo devolvido à Secretaria",
                    "dataHora": "2023-07-18T17:14:16.000Z"
                  },
                  {
                    "codigo": 12265,
                    "nome": "Expedida/certificada",
                    "dataHora": "2023-08-10T20:59:25.000Z"
                  },
                  {
                    "codigo": 11010,
                    "nome": "Mero expediente",
                    "dataHora": "2023-11-20T16:53:34.000Z"
                  },
                  {
                    "codigo": 12215,
                    "nome": "Processo devolvido à Secretaria",
                    "dataHora": "2023-11-20T16:53:37.000Z"
                  },
                  {
                    "codigo": 12265,
                    "nome": "Expedida/certificada",
                    "dataHora": "2023-12-04T14:17:33.000Z"
                  },
                  {
                    "codigo": 12311,
                    "nome": "Pedido de inclusão",
                    "dataHora": "2024-04-18T18:59:34.000Z"
                  },
                  {
                    "codigo": 12215,
                    "nome": "Processo devolvido à Secretaria",
                    "dataHora": "2024-04-18T18:59:40.000Z"
                  },
                  {
                    "codigo": 12115,
                    "nome": "Para julgamento de mérito",
                    "dataHora": "2024-04-23T11:10:22.000Z"
                  },
                  {
                    "codigo": 11010,
                    "nome": "Mero expediente",
                    "dataHora": "2024-04-30T14:23:21.000Z"
                  },
                  {
                    "codigo": 12215,
                    "nome": "Processo devolvido à Secretaria",
                    "dataHora": "2024-04-30T14:23:23.000Z"
                  },
                  {
                    "codigo": 12203,
                    "nome": "Adiado",
                    "dataHora": "2024-06-10T15:58:48.000Z"
                  },
                  {
                    "codigo": 12115,
                    "nome": "Para julgamento de mérito",
                    "dataHora": "2024-06-20T17:24:24.000Z"
                  },
                  {
                    "codigo": 12203,
                    "nome": "Adiado",
                    "dataHora": "2024-07-02T18:10:29.000Z"
                  },
                  {
                    "codigo": 12200,
                    "nome": "Mérito",
                    "dataHora": "2024-07-10T14:14:44.000Z"
                  },
                  {
                    "codigo": 12265,
                    "nome": "Expedida/certificada",
                    "dataHora": "2024-07-29T13:41:12.000Z"
                  }
                ],
                "id": "TJES_G2_00227832220178080024",
                "nivelSigilo": 0,
                "orgaoJulgador": {
                  "codigoMunicipioIBGE": 3205309,
                  "codigo": 48098,
                  "nome": "GAB. DESEMB. ARTHUR JOSÉ NEIVA DE ALMEIDA - VITORIA"
                },
                "assuntos": [
                  {
                    "codigo": 7768,
                    "nome": "Rescisão do contrato e devolução do dinheiro"
                  },
                  {"codigo": 7779, "nome": "Indenização por Dano Moral"},
                  {"codigo": 7780, "nome": "Indenização por Dano Material"}
                ]
              }
            }
          ]
        }
      };
}
