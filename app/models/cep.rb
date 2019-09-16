require 'net/http'
#API
class CEP
  attr_reader :logradouro, :bairro, :localidade, :uf # atributos somente de leitura
  
  END_POINT = "https://viacep.com.br/ws/"
  FORMAT = "json"
  
  def initialize(cep) # construtor
    cep_econtrado = encontrar(cep) # hash - encontrar é uma função
    preencher_dados(cep_econtrado)#  preencher_dados = função
  end

  def endereco
    "#{@logradouro} / #{@bairro} / #{@localidade} - #{@uf}"
  end

  private

  def preencher_dados(cep_econtrado) # hash
    @logradouro = cep_econtrado["logradouro"]
    @bairro     = cep_econtrado["bairro"]
    @localidade = cep_econtrado["localidade"]
    @uf         = cep_econtrado["uf"]
  end

  def encontrar(cep)#  prucura na API
    ActiveSupport::JSON.decode(
      Net::HTTP.get(
        URI("#{END_POINT}#{cep}/#{FORMAT}/")
      )
    )
  end
end