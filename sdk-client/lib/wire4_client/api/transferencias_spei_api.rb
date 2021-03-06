=begin
#Wire4RestAPI

#Referencia de la API de Wire4

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'uri'

module Wire4Client
  class TransferenciasSPEIApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Eliminación de transferencias SPEI® pendientes
    # Elimina un conjunto de transferencias a realizar en la cuenta del cliente Monex relacionada a la suscripción, las transferencias no deben haber sido confirmadas por el cliente.
    # @param authorization Header para token
    # @param request_id Identificador de las transferencias a eliminar
    # @param subscription El identificador de la suscripción a esta API
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def drop_transactions_pending_using_delete(authorization, request_id, subscription, opts = {})
      drop_transactions_pending_using_delete_with_http_info(authorization, request_id, subscription, opts)
      nil
    end

    # Eliminación de transferencias SPEI® pendientes
    # Elimina un conjunto de transferencias a realizar en la cuenta del cliente Monex relacionada a la suscripción, las transferencias no deben haber sido confirmadas por el cliente.
    # @param authorization Header para token
    # @param request_id Identificador de las transferencias a eliminar
    # @param subscription El identificador de la suscripción a esta API
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def drop_transactions_pending_using_delete_with_http_info(authorization, request_id, subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferenciasSPEIApi.drop_transactions_pending_using_delete ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TransferenciasSPEIApi.drop_transactions_pending_using_delete"
      end
      # verify the required parameter 'request_id' is set
      if @api_client.config.client_side_validation && request_id.nil?
        fail ArgumentError, "Missing the required parameter 'request_id' when calling TransferenciasSPEIApi.drop_transactions_pending_using_delete"
      end
      if @api_client.config.client_side_validation && request_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "request_id" when calling TransferenciasSPEIApi.drop_transactions_pending_using_delete, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && request_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "request_id" when calling TransferenciasSPEIApi.drop_transactions_pending_using_delete, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && request_id !~ Regexp.new(/[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/)
        fail ArgumentError, "invalid value for 'request_id' when calling TransferenciasSPEIApi.drop_transactions_pending_using_delete, must conform to the pattern /[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/."
      end

      # verify the required parameter 'subscription' is set
      if @api_client.config.client_side_validation && subscription.nil?
        fail ArgumentError, "Missing the required parameter 'subscription' when calling TransferenciasSPEIApi.drop_transactions_pending_using_delete"
      end
      if @api_client.config.client_side_validation && subscription.to_s.length > 36
        fail ArgumentError, 'invalid value for "subscription" when calling TransferenciasSPEIApi.drop_transactions_pending_using_delete, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && subscription.to_s.length < 36
        fail ArgumentError, 'invalid value for "subscription" when calling TransferenciasSPEIApi.drop_transactions_pending_using_delete, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && subscription !~ Regexp.new(/[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/)
        fail ArgumentError, "invalid value for 'subscription' when calling TransferenciasSPEIApi.drop_transactions_pending_using_delete, must conform to the pattern /[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/."
      end

      # resource path
      local_var_path = '/subscriptions/{subscription}/transactions/outcoming/spei/request/{requestId}'.sub('{' + 'requestId' + '}', request_id.to_s).sub('{' + 'subscription' + '}', subscription.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferenciasSPEIApi#drop_transactions_pending_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Consulta de transferencias recibidas
    # Realiza una consulta de las transferencias recibidas (depósitos) en la cuenta del cliente Monex relacionada a la suscripción, las transferencias que regresa este recuso son únicamente las transferencias  recibidas durante el día en el que se realiza la consulta.
    # @param authorization Header para token
    # @param subscription El identificador de la suscripción a esta API
    # @param [Hash] opts the optional parameters
    # @return [Array<Deposit>]
    def incoming_spei_transactions_report_using_get(authorization, subscription, opts = {})
      data, _status_code, _headers = incoming_spei_transactions_report_using_get_with_http_info(authorization, subscription, opts)
      data
    end

    # Consulta de transferencias recibidas
    # Realiza una consulta de las transferencias recibidas (depósitos) en la cuenta del cliente Monex relacionada a la suscripción, las transferencias que regresa este recuso son únicamente las transferencias  recibidas durante el día en el que se realiza la consulta.
    # @param authorization Header para token
    # @param subscription El identificador de la suscripción a esta API
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Deposit>, Fixnum, Hash)>] Array<Deposit> data, response status code and response headers
    def incoming_spei_transactions_report_using_get_with_http_info(authorization, subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferenciasSPEIApi.incoming_spei_transactions_report_using_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TransferenciasSPEIApi.incoming_spei_transactions_report_using_get"
      end
      # verify the required parameter 'subscription' is set
      if @api_client.config.client_side_validation && subscription.nil?
        fail ArgumentError, "Missing the required parameter 'subscription' when calling TransferenciasSPEIApi.incoming_spei_transactions_report_using_get"
      end
      if @api_client.config.client_side_validation && subscription.to_s.length > 36
        fail ArgumentError, 'invalid value for "subscription" when calling TransferenciasSPEIApi.incoming_spei_transactions_report_using_get, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && subscription.to_s.length < 36
        fail ArgumentError, 'invalid value for "subscription" when calling TransferenciasSPEIApi.incoming_spei_transactions_report_using_get, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && subscription !~ Regexp.new(/[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/)
        fail ArgumentError, "invalid value for 'subscription' when calling TransferenciasSPEIApi.incoming_spei_transactions_report_using_get, must conform to the pattern /[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/."
      end

      # resource path
      local_var_path = '/subscriptions/{subscription}/transactions/incoming/spei'.sub('{' + 'subscription' + '}', subscription.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Deposit>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferenciasSPEIApi#incoming_spei_transactions_report_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Consulta de transferencias de salida por identificador de petición
    # Consulta las transferencias de salida registradas en una petición, las transferencias que regresa este recuso son únicamente las transferencias  de salida agrupadas al identificador de la petición que se generó al hacer el registro de las transacciones el cual se debe especificar como parte del path de este endpoint.
    # @param authorization Header para token
    # @param request_id Identificador de la petición a buscar
    # @param subscription El identificador de la suscripción a esta API
    # @param [Hash] opts the optional parameters
    # @return [PaymentsRequestId]
    def out_comming_spei_request_id_transactions_report_using_get(authorization, request_id, subscription, opts = {})
      data, _status_code, _headers = out_comming_spei_request_id_transactions_report_using_get_with_http_info(authorization, request_id, subscription, opts)
      data
    end

    # Consulta de transferencias de salida por identificador de petición
    # Consulta las transferencias de salida registradas en una petición, las transferencias que regresa este recuso son únicamente las transferencias  de salida agrupadas al identificador de la petición que se generó al hacer el registro de las transacciones el cual se debe especificar como parte del path de este endpoint.
    # @param authorization Header para token
    # @param request_id Identificador de la petición a buscar
    # @param subscription El identificador de la suscripción a esta API
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentsRequestId, Fixnum, Hash)>] PaymentsRequestId data, response status code and response headers
    def out_comming_spei_request_id_transactions_report_using_get_with_http_info(authorization, request_id, subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferenciasSPEIApi.out_comming_spei_request_id_transactions_report_using_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TransferenciasSPEIApi.out_comming_spei_request_id_transactions_report_using_get"
      end
      # verify the required parameter 'request_id' is set
      if @api_client.config.client_side_validation && request_id.nil?
        fail ArgumentError, "Missing the required parameter 'request_id' when calling TransferenciasSPEIApi.out_comming_spei_request_id_transactions_report_using_get"
      end
      # verify the required parameter 'subscription' is set
      if @api_client.config.client_side_validation && subscription.nil?
        fail ArgumentError, "Missing the required parameter 'subscription' when calling TransferenciasSPEIApi.out_comming_spei_request_id_transactions_report_using_get"
      end
      if @api_client.config.client_side_validation && subscription.to_s.length > 36
        fail ArgumentError, 'invalid value for "subscription" when calling TransferenciasSPEIApi.out_comming_spei_request_id_transactions_report_using_get, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && subscription.to_s.length < 36
        fail ArgumentError, 'invalid value for "subscription" when calling TransferenciasSPEIApi.out_comming_spei_request_id_transactions_report_using_get, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && subscription !~ Regexp.new(/[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/)
        fail ArgumentError, "invalid value for 'subscription' when calling TransferenciasSPEIApi.out_comming_spei_request_id_transactions_report_using_get, must conform to the pattern /[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/."
      end

      # resource path
      local_var_path = '/subscriptions/{subscription}/transactions/outcoming/spei/{requestId}'.sub('{' + 'requestId' + '}', request_id.to_s).sub('{' + 'subscription' + '}', subscription.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentsRequestId')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferenciasSPEIApi#out_comming_spei_request_id_transactions_report_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Consulta de transferencias realizadas
    # Consulta las transferencias realizadas en la cuenta del cliente Monex relacionada a la suscripción, las transferencias que regresa este recuso son únicamente las transferencias recibidas en el día en el que se realiza la consulta.<br>Se pueden realizar consultas por <strong>order_id</strong> al realizar este tipo de consultas no importa el día en el que se realizó la transferencia
    # @param authorization Header para token
    # @param subscription El identificador de la suscripción a esta API
    # @param [Hash] opts the optional parameters
    # @option opts [String] :order_id Identificador de la orden a buscar
    # @return [Array<Payment>]
    def outgoing_spei_transactions_report_using_get(authorization, subscription, opts = {})
      data, _status_code, _headers = outgoing_spei_transactions_report_using_get_with_http_info(authorization, subscription, opts)
      data
    end

    # Consulta de transferencias realizadas
    # Consulta las transferencias realizadas en la cuenta del cliente Monex relacionada a la suscripción, las transferencias que regresa este recuso son únicamente las transferencias recibidas en el día en el que se realiza la consulta.&lt;br&gt;Se pueden realizar consultas por &lt;strong&gt;order_id&lt;/strong&gt; al realizar este tipo de consultas no importa el día en el que se realizó la transferencia
    # @param authorization Header para token
    # @param subscription El identificador de la suscripción a esta API
    # @param [Hash] opts the optional parameters
    # @option opts [String] :order_id Identificador de la orden a buscar
    # @return [Array<(Array<Payment>, Fixnum, Hash)>] Array<Payment> data, response status code and response headers
    def outgoing_spei_transactions_report_using_get_with_http_info(authorization, subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferenciasSPEIApi.outgoing_spei_transactions_report_using_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TransferenciasSPEIApi.outgoing_spei_transactions_report_using_get"
      end
      # verify the required parameter 'subscription' is set
      if @api_client.config.client_side_validation && subscription.nil?
        fail ArgumentError, "Missing the required parameter 'subscription' when calling TransferenciasSPEIApi.outgoing_spei_transactions_report_using_get"
      end
      if @api_client.config.client_side_validation && subscription.to_s.length > 36
        fail ArgumentError, 'invalid value for "subscription" when calling TransferenciasSPEIApi.outgoing_spei_transactions_report_using_get, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && subscription.to_s.length < 36
        fail ArgumentError, 'invalid value for "subscription" when calling TransferenciasSPEIApi.outgoing_spei_transactions_report_using_get, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && subscription !~ Regexp.new(/[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/)
        fail ArgumentError, "invalid value for 'subscription' when calling TransferenciasSPEIApi.outgoing_spei_transactions_report_using_get, must conform to the pattern /[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/."
      end

      # resource path
      local_var_path = '/subscriptions/{subscription}/transactions/outcoming/spei'.sub('{' + 'subscription' + '}', subscription.to_s)

      # query parameters
      query_params = {}
      query_params[:'order_id'] = opts[:'order_id'] if !opts[:'order_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Payment>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferenciasSPEIApi#outgoing_spei_transactions_report_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Registro de transferencias
    # Registra un conjunto de transferencias a realizar en la cuenta del cliente Monex relacionada a la suscripción, las transferencias deben ser confirmadas por el cliente para que se efectuen.
    # @param authorization Header para token
    # @param subscription El identificador de la suscripción a esta API
    # @param transactions Información de las transferencias SPEI de salida
    # @param [Hash] opts the optional parameters
    # @return [TokenRequiredResponse]
    def register_outgoing_spei_transaction_using_post(authorization, subscription, transactions, opts = {})
      data, _status_code, _headers = register_outgoing_spei_transaction_using_post_with_http_info(authorization, subscription, transactions, opts)
      data
    end

    # Registro de transferencias
    # Registra un conjunto de transferencias a realizar en la cuenta del cliente Monex relacionada a la suscripción, las transferencias deben ser confirmadas por el cliente para que se efectuen.
    # @param authorization Header para token
    # @param subscription El identificador de la suscripción a esta API
    # @param transactions Información de las transferencias SPEI de salida
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokenRequiredResponse, Fixnum, Hash)>] TokenRequiredResponse data, response status code and response headers
    def register_outgoing_spei_transaction_using_post_with_http_info(authorization, subscription, transactions, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferenciasSPEIApi.register_outgoing_spei_transaction_using_post ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TransferenciasSPEIApi.register_outgoing_spei_transaction_using_post"
      end
      # verify the required parameter 'subscription' is set
      if @api_client.config.client_side_validation && subscription.nil?
        fail ArgumentError, "Missing the required parameter 'subscription' when calling TransferenciasSPEIApi.register_outgoing_spei_transaction_using_post"
      end
      if @api_client.config.client_side_validation && subscription.to_s.length > 36
        fail ArgumentError, 'invalid value for "subscription" when calling TransferenciasSPEIApi.register_outgoing_spei_transaction_using_post, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && subscription.to_s.length < 36
        fail ArgumentError, 'invalid value for "subscription" when calling TransferenciasSPEIApi.register_outgoing_spei_transaction_using_post, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && subscription !~ Regexp.new(/[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/)
        fail ArgumentError, "invalid value for 'subscription' when calling TransferenciasSPEIApi.register_outgoing_spei_transaction_using_post, must conform to the pattern /[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[34][A-Fa-f0-9]{3}-[89ab][A-Fa-f0-9]{3}-[A-Fa-f0-9]{12}$/."
      end

      # verify the required parameter 'transactions' is set
      if @api_client.config.client_side_validation && transactions.nil?
        fail ArgumentError, "Missing the required parameter 'transactions' when calling TransferenciasSPEIApi.register_outgoing_spei_transaction_using_post"
      end
      # resource path
      local_var_path = '/subscriptions/{subscription}/transactions/outcoming/spei'.sub('{' + 'subscription' + '}', subscription.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(transactions)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TokenRequiredResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferenciasSPEIApi#register_outgoing_spei_transaction_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
