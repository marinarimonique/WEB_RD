class Busca < SitePrism::Page

    elements :search, "input[class='oxd-input oxd-input--active']"
    element :button_search, "button[type='submit']"

    def busca_user(username)
        search[0].send_keys username
        search[0].send_keys username

        button_search.click
    end
end