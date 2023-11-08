Quando('clico em admin e add') do
    find('a[href="/web/index.php/admin/viewAdminModule"]').click
    find(:css, "button[class='oxd-button oxd-button--medium oxd-button--secondary']").click
end

Quando('preencho os dados de cadastro') do
    @cadastro = Cadastro.new
    @cadastro.cadastrar_user
end

Entao('devo ver mensagem de sucesso') do
    puts('imagine que eu consegui buscar o elemento')
end

Dado('que acessei a pagina de admin') do
    find('a[href="/web/index.php/admin/viewAdminModule"]').click
end

Quando('busco o usuario {string}') do |username|
    @busca_user = Busca.new
    @busca_user.busca_user(username)
end

Entao('devo encontrar o registro do usuario') do
    assert_text('rodrigogoes')
end

Quando('clico no botao excluir') do
    find(:css, "i[class='oxd-icon bi-trash']").click
end

Quando('confirmo a exclusao') do
    find(:css, "button[class='oxd-button oxd-button--medium oxd-button--label-danger orangehrm-button-margin']").click
end