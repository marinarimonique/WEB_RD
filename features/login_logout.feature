#language: pt

Funcionalidade: Login Logout

    @logout
    Cenario: Login do usuario
        Dado que acessei a pagina de login
        Quando faço login com "Admin" e "admin123"
        Entao sou autenticado com sucesso

    @login
    Cenario: Logout do usuario
        Dado que acessei a dashboard
        Quando clico no userdropdown 
        E clico em logout
        Entao a sessão é expirada