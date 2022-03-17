require_relative "routes/cadastrar_funcionarios"

 describe "POST/ cadastrar" do
      context "Cadastrar funcionário" do
           
            before(:all) do
                CadastrarFuncionario.new.cadastrar
            end

            it "valida status code" do
                expect($result.code).to eql 200
            end

            it "valida status da requisição" do
                expect($result["status"]).to eql "success"
            end

            it "valida dados do funcionario cadastrado" do
                 expect($response["name"]).to eql $body[:name]
                 expect($response["salary"]).to eql $body[:salary]
                 expect($response["age"]).to eql $body[:age]
                 expect($response["id"]) != 0
            end
      end
end