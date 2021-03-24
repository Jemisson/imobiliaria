# Site Imobiliária

## Informações da configuração da aplicação:
* Ruby 2.7.0
* Rail 5.2.4

Para executar este projeto em sua máquina, siga os passos abaixo:

* Efetue o clone do repositório:

      git clone https://github.com/Jemisson/imobiliaria.git

* Acesse o diretório e execute no terminal:

      bundle install

* Execute em seguida:

      rails db:create db:migrate

* Levante o servidor, com o comando:

      rails server

* Em seu navegador, acesse

      localhost:3000
      
* Ah! Não se esqueca de criar o arquivo com suas configuração para o banco de dados PostgreSql:
      
      config/database.yml


No site você vai encontrar na página principal as informações dos empreeendimentos disponíveis. Casa empreeendimento possui um ícone de estrela que representa a marcação de favorito, clique sobre ela para favoritar. Se você não estiver autenticado no sistema, será reditrecionado para a página de cadastro, caso contrários irá para a página de autenticação. Uma vez autenticado o sistema permitirá a marcação dos favoritos, clique cobre a estrela para favoritar e clique novamente para desfavoritar um empreendimento. No menu superior está disponível a opção 'favoritos', clicando sobre ela será direcionado para uma nova página composta apenas pelos favoritos marcados.
_____
Criado por Jemison Santos
