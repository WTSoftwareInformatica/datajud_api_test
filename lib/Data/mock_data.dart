// Mock database apenas para testes sem consultar a API.

class MockData {

get respostaNull => {
      "took": 38,
      "timed_out": false,
      "_shards": {"total": 7, "successful": 7, "skipped": 0, "failed": 0},
      "hits": {
        "total": {"value": 0, "relation": "eq"},
        "max_score": null,
        "hits": []
      }
    };

get respostaOk => {
      "numeroProcesso": "00130759020004013800",
      "classe": {"codigo": 198, "nome": "Apelação Cível"},
      "sistema": {"codigo": 1, "nome": "Pje"},
      "formato": {"codigo": 1, "nome": "Eletrônico"},
      "tribunal": "TRF1",
      "dataHoraUltimaAtualizacao": "2023-07-31T11:29:07.533Z",
      "grau": "G2",
      "@timestamp": "2023-09-05T04:49:25.345Z",
      "dataAjuizamento": "2001-02-16T14:45:17.000Z",
      "movimentos": [
        {
          "complementosTabelados": [
            {
              "codigo": 2,
              "valor": 1,
              "nome": "competência exclusiva",
              "descricao": "tipo_de_distribuicao_redistribuicao"
            }
          ],
          "codigo": 26,
          "nome": "Distribuição buscando de mock_data.dart",
          "dataHora": "2001-02-16T18:07:44.000Z"
        },
        {
          "complementosTabelados": [
            {
              "codigo": 3,
              "valor": 36,
              "nome": "para julgamento",
              "descricao": "tipo_de_conclusao"
            }
          ],
          "codigo": 51,
          "nome": "Conclusão",
          "dataHora": "2001-03-05T11:00:22.000Z"
        },
        {
          "complementosTabelados": [
            {
              "codigo": 2,
              "valor": 1,
              "nome": "competência exclusiva",
              "descricao": "tipo_de_distribuicao_redistribuicao"
            }
          ],
          "codigo": 36,
          "nome": "Redistribuição",
          "dataHora": "2003-10-01T00:00:00.000Z"
        },
        {
          "complementosTabelados": [
            {
              "codigo": 3,
              "valor": 36,
              "nome": "para julgamento",
              "descricao": "tipo_de_conclusao"
            }
          ],
          "codigo": 51,
          "nome": "Conclusão",
          "dataHora": "2003-10-13T16:25:00.000Z"
        },
        {
          "complementosTabelados": [
            {
              "codigo": 2,
              "valor": 1,
              "nome": "competência exclusiva",
              "descricao": "tipo_de_distribuicao_redistribuicao"
            }
          ],
          "codigo": 36,
          "nome": "Redistribuição",
          "dataHora": "2004-03-18T17:03:50.000Z"
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
          "dataHora": "2009-04-28T12:28:00.000Z"
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
          "dataHora": "2009-06-08T15:09:18.000Z"
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
          "dataHora": "2009-06-23T14:24:25.000Z"
        },
        {
          "complementosTabelados": [
            {
              "codigo": 3,
              "valor": 36,
              "nome": "para julgamento",
              "descricao": "tipo_de_conclusao"
            }
          ],
          "codigo": 51,
          "nome": "Conclusão",
          "dataHora": "2009-06-25T13:15:16.000Z"
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
          "dataHora": "2009-08-25T15:35:00.000Z"
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
          "dataHora": "2009-10-02T15:48:55.000Z"
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
          "dataHora": "2009-10-02T16:03:13.000Z"
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
          "dataHora": "2009-11-04T10:26:17.000Z"
        },
        {
          "complementosTabelados": [
            {
              "codigo": 3,
              "valor": 189,
              "nome": "para admissibilidade recursal",
              "descricao": "tipo_de_conclusao"
            }
          ],
          "codigo": 51,
          "nome": "Conclusão",
          "dataHora": "2009-11-04T18:22:00.000Z"
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
          "dataHora": "2009-12-10T17:33:00.000Z"
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
          "dataHora": "2009-12-10T17:54:35.000Z"
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
          "dataHora": "2009-12-11T14:05:00.000Z"
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
          "dataHora": "2009-12-18T16:20:00.000Z"
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
          "dataHora": "2009-12-18T18:00:18.000Z"
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
          "dataHora": "2009-12-18T18:29:00.000Z"
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
          "dataHora": "2010-03-15T17:02:00.000Z"
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
          "dataHora": "2010-05-06T18:49:02.000Z"
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
          "dataHora": "2010-05-07T15:40:38.000Z"
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
          "dataHora": "2018-03-21T15:15:00.000Z"
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
          "dataHora": "2019-04-09T10:39:38.000Z"
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
          "dataHora": "2019-04-10T11:07:00.000Z"
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
          "dataHora": "2019-04-10T11:08:00.000Z"
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
          "dataHora": "2019-06-04T18:59:40.000Z"
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
          "dataHora": "2020-12-29T12:43:02.000Z"
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
          "dataHora": "2020-12-29T12:43:07.000Z"
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
          "dataHora": "2020-12-29T12:43:10.000Z"
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
          "dataHora": "2021-02-01T22:48:53.000Z"
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
          "dataHora": "2021-02-01T22:48:55.000Z"
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
          "dataHora": "2021-02-01T22:48:56.000Z"
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
          "dataHora": "2021-12-21T23:57:55.000Z"
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
          "dataHora": "2022-08-18T15:49:48.000Z"
        },
        {
          "complementosTabelados": [
            {
              "codigo": 18,
              "valor": 90,
              "nome":
                  "declaração de competência para Ácórdão vinculado a Tribunal diferente",
              "descricao": "motivo_da_remessa"
            }
          ],
          "codigo": 123,
          "nome": "Remessa",
          "dataHora": "2022-08-26T08:10:43.000Z"
        },
        {
          "complementosTabelados": [
            {
              "codigo": 18,
              "valor": 90,
              "nome":
                  "declaração de competência para Ácórdão vinculado a Tribunal diferente",
              "descricao": "motivo_da_remessa"
            }
          ],
          "codigo": 123,
          "nome": "Remessa",
          "dataHora": "2022-08-26T18:26:55.000Z"
        },
        {
          "codigo": 493,
          "nome": "Entrega em carga/vista",
          "dataHora": "2001-02-16T18:08:44.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2001-03-05T10:06:23.000Z"
        },
        {
          "codigo": 10966,
          "nome": "Mudança de Classe Processual",
          "dataHora": "2008-08-30T18:59:40.000Z"
        },
        {
          "codigo": 12104,
          "nome": "Inclusão em pauta",
          "dataHora": "2009-02-26T12:15:06.000Z"
        },
        {
          "codigo": 92,
          "nome": "Publicação",
          "dataHora": "2009-03-04T09:08:00.000Z"
        },
        {
          "codigo": 239,
          "nome": "Não-Provimento",
          "dataHora": "2009-03-10T09:00:00.000Z"
        },
        {
          "codigo": 92,
          "nome": "Publicação",
          "dataHora": "2009-04-22T12:03:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2009-04-28T17:46:00.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2009-05-11T18:00:00.000Z"
        },
        {
          "codigo": 92,
          "nome": "Publicação",
          "dataHora": "2009-05-15T08:00:00.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2009-05-22T17:31:49.000Z"
        },
        {
          "codigo": 12268,
          "nome": "Em Secretaria",
          "dataHora": "2009-06-02T08:00:00.000Z"
        },
        {
          "codigo": 493,
          "nome": "Entrega em carga/vista",
          "dataHora": "2009-06-02T15:19:00.000Z"
        },
        {
          "codigo": 12315,
          "nome": "Devolvidos os autos",
          "dataHora": "2009-06-05T13:08:00.000Z"
        },
        {
          "codigo": 493,
          "nome": "Entrega em carga/vista",
          "dataHora": "2009-06-17T13:55:15.000Z"
        },
        {
          "codigo": 12315,
          "nome": "Devolvidos os autos",
          "dataHora": "2009-06-19T10:30:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2009-06-26T15:59:00.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2009-07-02T20:30:00.000Z"
        },
        {
          "codigo": 871,
          "nome": "Acolhimento em parte de Embargos de Declaração",
          "dataHora": "2009-07-03T09:00:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2009-08-26T15:22:00.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2009-09-04T18:00:00.000Z"
        },
        {
          "codigo": 92,
          "nome": "Publicação",
          "dataHora": "2009-09-11T08:00:00.000Z"
        },
        {
          "codigo": 12268,
          "nome": "Em Secretaria",
          "dataHora": "2009-09-29T08:10:00.000Z"
        },
        {
          "codigo": 493,
          "nome": "Entrega em carga/vista",
          "dataHora": "2009-09-29T14:06:00.000Z"
        },
        {
          "codigo": 12315,
          "nome": "Devolvidos os autos",
          "dataHora": "2009-10-02T13:06:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2009-10-06T17:06:00.000Z"
        },
        {
          "codigo": 493,
          "nome": "Entrega em carga/vista",
          "dataHora": "2009-10-14T09:56:00.000Z"
        },
        {
          "codigo": 12315,
          "nome": "Devolvidos os autos",
          "dataHora": "2009-11-03T12:08:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2009-11-17T10:21:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2009-12-10T17:45:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2009-12-11T15:48:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2009-12-18T18:00:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2010-01-11T10:20:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2010-03-15T18:32:00.000Z"
        },
        {
          "codigo": 92,
          "nome": "Publicação",
          "dataHora": "2010-04-23T08:00:00.000Z"
        },
        {
          "codigo": 493,
          "nome": "Entrega em carga/vista",
          "dataHora": "2010-04-26T11:15:12.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2010-05-04T17:29:31.000Z"
        },
        {
          "codigo": 12315,
          "nome": "Devolvidos os autos",
          "dataHora": "2010-05-06T14:20:41.000Z"
        },
        {
          "codigo": 898,
          "nome": "Por decisão judicial",
          "dataHora": "2010-05-24T17:05:00.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2013-01-08T09:10:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2018-03-21T15:19:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2019-04-10T11:06:00.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2019-04-11T11:36:00.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2019-06-04T18:59:09.000Z"
        },
        {
          "codigo": 132,
          "nome": "Recebimento",
          "dataHora": "2019-06-11T14:17:00.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2020-11-05T16:48:00.000Z"
        },
        {
          "codigo": 14732,
          "nome": "Conversão de Autos Físicos em Eletrônicos",
          "dataHora": "2020-11-14T04:28:35.000Z"
        },
        {
          "codigo": 1061,
          "nome": "Disponibilização no Diário da Justiça Eletrônico",
          "dataHora": "2021-02-27T01:55:52.000Z"
        },
        {
          "codigo": 92,
          "nome": "Publicação",
          "dataHora": "2021-02-27T01:55:52.000Z"
        },
        {
          "codigo": 1051,
          "nome": "Decurso de Prazo",
          "dataHora": "2021-03-23T00:34:02.000Z"
        },
        {
          "codigo": 1051,
          "nome": "Decurso de Prazo",
          "dataHora": "2021-03-31T00:31:07.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2022-08-03T17:11:00.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2022-08-04T11:14:00.000Z"
        },
        {
          "codigo": 11383,
          "nome": "Ato ordinatório",
          "dataHora": "2022-08-05T10:17:00.000Z"
        },
        {
          "codigo": 22,
          "nome": "Baixa Definitiva",
          "dataHora": "2022-08-26T08:10:44.000Z"
        },
        {
          "codigo": 22,
          "nome": "Baixa Definitiva",
          "dataHora": "2022-08-26T18:26:55.000Z"
        }
      ],
      "id": "TRF1_198_G2_67815_00130759020004013800",
      "nivelSigilo": 0,
      "orgaoJulgador": {
        "codigoMunicipioIBGE": 743,
        "codigo": 67815,
        "nome": "Gabinete 24"
      },
      "assuntos": [
        {"codigo": 6048, "nome": "Contribuições Previdenciárias"}
      ]
    };
}
