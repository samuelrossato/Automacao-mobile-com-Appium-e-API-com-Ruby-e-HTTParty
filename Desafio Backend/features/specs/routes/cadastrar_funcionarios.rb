require "httparty"

class CadastrarFuncionario
    include HTTParty
    base_uri "http://dummy.restapiexample.com/api/v1"
     
    def cadastrar
        $body = { name: "Antonio Carlos", salary: "10000", age: "20"}
        $result =  self.class.post("/create",
            body: $body.to_json,
            headers: {
                "Content-Type": "application/json",
            }
        )     
            $response = $result.parsed_response["data"]
            raise "Exception: Limite de requisições excedido num curto período de tempo. Status code error  #{$result.code}" if $result.code != 200
    end
end