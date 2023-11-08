#language:pt

Funcionalidade: Cadastro e manutenção

    @login
    Cenario: Cadastrar novo Admin
        Dado que acessei a dashboard
        Quando clico em admin e add
        E preencho os dados de cadastro
        Entao devo ver mensagem de sucesso

    @login
    Cenario: Buscar admin cadastrado
        Dado que acessei a pagina de admin
        Quando busco o usuario 'rodrigogoes'
        Entao devo encontrar o registro do usuario

    @login
    Cenario: Apagar admin cadastrado
        Dado que acessei a pagina de admin
        Quando busco o usuario 'rodrigogoes'
        E clico no botao excluir
        E confirmo a exclusao
        Entao devo ver mensagem de sucesso