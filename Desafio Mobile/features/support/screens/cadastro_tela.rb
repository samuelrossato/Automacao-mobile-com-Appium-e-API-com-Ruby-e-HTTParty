class Cadastro

    def acessar
        find_element(id: "com.android.packageinstaller:id/permission_allow_button").click
        find_element(class: "android.widget.ImageButton").click
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/floating_novo").click
    end

    def inserir
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editNome").send_keys("Samuel Rossato")
    end

    def clicar
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar").click
    end

    def mensagem(mensagem)
        find_element(id: "android:id/message", text: mensagem).displayed?
    end

    def campo_em_branco
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editNome").send_keys("")
    end

    def alerta(alerta)
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/editNome", text: alerta).displayed?
    end

end