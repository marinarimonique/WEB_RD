class Cadastro < SitePrism::Page

    elements :user_role, "i[class='oxd-icon bi-caret-down-fill oxd-select-text--arrow']"
    elements :user_role_selection, "div[class='oxd-select-option']"
    element :employee_name, "input[placeholder='Type for hints...']"
    elements :employe_list, "div[role='listbox']"
    elements :username_password, "input[class='oxd-input oxd-input--active']"
    element :save_button, "button[type='submit']"

    def cadastrar_user
        sleep(1)
        user_role[0].click
        user_role_selection[1].click

        sleep(1)
        user_role[1].click
        user_role_selection[1].click

        sleep(1)
        employee_name.send_keys 'a'
        sleep(3)
        employe_list[0].click

        username_password[1].send_keys 'rodrigogoes'
        username_password[1].send_keys 'fakenatty123'
        username_password[2].send_keys 'fakenatty123'

        save_button.click
        sleep(3)
    end
end