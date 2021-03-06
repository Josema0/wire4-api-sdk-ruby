=begin
#Wire4RestAPI

#Referencia de la API de Wire4

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'spec_helper'
require 'json'

# Unit tests for Wire4Client::TransferenciasSPIDApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransferenciasSPIDApi' do
  before do
    # run before each test
    @instance = Wire4Client::TransferenciasSPIDApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransferenciasSPIDApi' do
    it 'should create an instance of TransferenciasSPIDApi' do
      expect(@instance).to be_instance_of(Wire4Client::TransferenciasSPIDApi)
    end
  end

  # unit tests for get_spid_classifications_using_get
  # Consulta las clasificaciones para operaciones con SPID
  # Obtiene las clasificaciones para operaciones con dólares (SPID) de Monex.&lt;br/&gt;Este recurso se debe invocar previo al realizar una operación SPID.&lt;br/&gt;Se requiere que el token de autenticación se genere con scope spid_admin.
  # @param authorization Header para token
  # @param subscription El identificador de la suscripción a esta API
  # @param [Hash] opts the optional parameters
  # @return [SpidClassificationsResponseDTO]
  describe 'get_spid_classifications_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for register_outgoing_spid_transaction_using_post
  # Registro de transferencias SPID
  # Registra un conjunto de transferencias a realizar en la cuenta del cliente Monex relacionada a la suscripción, las transferencias deben ser confirmadas por el cliente para que se efectuen.
  # @param authorization Header para token
  # @param subscription El identificador de la suscripción a esta API
  # @param transactions Información de las transferencias SPID de salida
  # @param [Hash] opts the optional parameters
  # @return [TokenRequiredResponse]
  describe 'register_outgoing_spid_transaction_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
