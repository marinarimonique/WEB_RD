Before('@login') do
    visit 'https://opensource-demo.orangehrmlive.com/web/index.php/auth/login'
    find(:css, "input[name='username']").set 'Admin'
    find(:css, "input[name='password']").set 'admin123'
    find(:css, "button[type='submit']").click
end

After('@logout') do
    find(:css, "p[class='oxd-userdropdown-name']").click
    find('a[href="/web/index.php/auth/logout"]').click
end