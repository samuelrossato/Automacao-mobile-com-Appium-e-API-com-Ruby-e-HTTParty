require_relative "routes/consultar_lista_funcionarios"

 describe "GET/ lista de funcionários" do
      context "Consultar lista de funcionários" do
           
            before(:all) do
               Funcionario.new.consultar 
            end

            it "valida status code" do
                expect($result.code).to eql 200
            end

            it "valida status da requisição" do
                expect($result.parsed_response["status"]).to eql "success"
            end

            it "valida id dos funcionarios cadastrados" do
                i = 0
                a = 1
                $response.size.times do
                    expect($response[i]["id"]).to eql a
                    i = i + 1
                    a = a + 1
                end
            end
      end
end