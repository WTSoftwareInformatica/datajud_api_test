# datajud_api_test

Projeto para testes de acesso à API públida DATAJUD do CNJ e estudos sobre responsividade.

Classe Processo() criada em https://app.quicktype.io/ tendo em vista o objetivo do projeto.

A leitura da resposta da API ficou melhor com a ajuda do site https://jsoneditoronline.org/

 ATENÇÃO: para funcionar no navegador Web é preciso rodar usando
$ flutter run -d chrome --web-browser-flag "--disable-web-security"

Aplicados conceitos de gerenciamento de estado, após assistir a série de vídeos do canal 
    FlutterandoTV: https://www.youtube.com/playlist?list=PLlBnICoI-g-eG0eVkHu2IaO48TljxPjPq

- Estrutura do projeto:
  - Camada UI - Cada view possui um "Page" e um "Controller". As regras de negócio de cada view 
    devem ficar apenas em seu respectivo controller. Somente o controller pode se comunicar com 
    o "Store" da model para leitura de dados. Onde se aplica, a view recebe o "State" da model 
    via "Provider". Os wigets exclusivos de um page estão localizados dentro de uma pasta 
    "widgets" da respectiva page. Widgets para uso em toda a aplicação estão na pasta "Widgets"
    da pasta "UI".
  - Camada Models - Cada modelo possui uma respectiva classe "Store" que implementa seus métodos
    e é responsável por interagir com a DataSource, seja por um service (quando os dados provem
    de uma API) ou seja por um respository (quando os dados vem de uma fonte de dados, local ou 
    remota). Onde é necessário o controle de estado do objeto é criada também uma respectiva
    "State" para o mesmo.
  - Camada Repository - Fornece os dados de um banco de dados para o aplicativo, seja de uma
    fonte local ou remota.
  - Camada Services - Busca dados externos provenientes de uma API.
