Dado('que acessei a pagina de login') do
    visit 'https://opensource-demo.orangehrmlive.com/web/index.php/auth/login'
end
  
  Quando('faço login com {string} e {string}') do |username, password|
    find(:css, "input[name='username']").set username
    find(:css, "input[name='password']").set password
    find(:css, "button[type='submit']").click
end
  
  Entao('sou autenticado com sucesso') do
    sleep(4)
    expect(page).to have_content 'Dashboard'
end

Dado('que acessei a dashboard') do
    expect(page).to have_content 'Dashboard'
end
  
Quando('clico no userdropdown') do
    find(:css, "p[class='oxd-userdropdown-name']").click
end
  
Quando('clico em logout') do
    find('a[href="/web/index.php/auth/logout"]').click
end
  
Entao('a sessão é expirada') do
    expect(page).to have_content 'Login'
end