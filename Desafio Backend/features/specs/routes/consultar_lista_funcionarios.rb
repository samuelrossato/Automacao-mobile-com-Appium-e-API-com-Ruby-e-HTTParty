require "httparty"

class Funcionario
    include HTTParty
    base_uri "http://dummy.restapiexample.com/api/v1"
     
    def consultar
        $result =  self.class.get("/employees",
            headers: {
                "Content-Type": "application/json",
            }
        )     
            $response = $result.parsed_response["data"]
            raise "Exception: Limite de requisições excedido num curto período de tempo. Status code error  #{$result.code}" if $result.code != 200
    end
end