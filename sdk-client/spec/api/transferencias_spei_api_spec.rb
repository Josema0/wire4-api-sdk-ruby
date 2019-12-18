=begin
#Wire4RestAPI

#Referencia de la API de Wire4

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'spec_helper'
require 'json'

# Unit tests for Wire4Client::TransferenciasSPEIApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransferenciasSPEIApi' do
  before do
    # run before each test
    @instance = Wire4Client::TransferenciasSPEIApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransferenciasSPEIApi' do
    it 'should create an instance of TransferenciasSPEIApi' do
      expect(@instance).to be_instance_of(Wire4Client::TransferenciasSPEIApi)
    end
  end

  # unit tests for drop_transactions_pending_using_delete
  # Eliminación de transferencias SPEI® pendientes
  # Elimina un conjunto de transferencias a realizar en la cuenta del cliente Monex relacionada a la suscripción, las transferencias no deben haber sido confirmadas por el cliente.
  # @param request_id Identificador de las transferencias a eliminar
  # @param subscription El identificador de la suscripción a esta API
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'drop_transactions_pending_using_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for incoming_spei_transactions_report_using_get
  # Consulta de transferencias recibidas
  # Realiza una consulta de las transferencias recibidas (depósitos) en la cuenta del cliente Monex relacionada a la suscripción, las transferencias que regresa este recuso son únicamente las transferencias  recibidas durante el día en el que se realiza la consulta.
  # @param subscription El identificador de la suscripción a esta API
  # @param [Hash] opts the optional parameters
  # @return [Array<Deposit>]
  describe 'incoming_spei_transactions_report_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for outgoing_spei_transactions_report_using_get
  # Consulta de transferencias realizadas
  # Consulta las transferencias realizadas en la cuenta del cliente Monex relacionada a la suscripción, las transferencias que regresa este recuso son únicamente las transferencias recibidas en el día en el que se realiza la consulta.&lt;br&gt;Se pueden realizar consultas por &lt;strong&gt;order_id&lt;/strong&gt; al realizar este tipo de consultas no importa el día en el que se realizó la transferencia
  # @param subscription El identificador de la suscripción a esta API
  # @param [Hash] opts the optional parameters
  # @option opts [String] :order_id Identificador de la orden a buscar
  # @return [Array<Payment>]
  describe 'outgoing_spei_transactions_report_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for register_outgoing_spei_transaction_using_post
  # Registro de transferencias
  # Registra un conjunto de transferencias a realizar en la cuenta del cliente Monex relacionada a la suscripción, las transferencias deben ser confirmadas por el cliente para que se efectuen.
  # @param subscription El identificador de la suscripción a esta API
  # @param transactions Información de las transferencias SPEI de salida
  # @param [Hash] opts the optional parameters
  # @return [TokenRequiredResponse]
  describe 'register_outgoing_spei_transaction_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end