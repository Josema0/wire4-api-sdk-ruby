# Wire4Client::TransferenciasSPEIApi

All URIs are relative to *https://sandbox-api.wire4.mx/wire4/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**drop_transactions_pending_using_delete**](TransferenciasSPEIApi.md#drop_transactions_pending_using_delete) | **DELETE** /subscriptions/{subscription}/transactions/outcoming/spei/request/{requestId} | Eliminación de transferencias SPEI® pendientes
[**incoming_spei_transactions_report_using_get**](TransferenciasSPEIApi.md#incoming_spei_transactions_report_using_get) | **GET** /subscriptions/{subscription}/transactions/incoming/spei | Consulta de transferencias recibidas
[**outgoing_spei_transactions_report_using_get**](TransferenciasSPEIApi.md#outgoing_spei_transactions_report_using_get) | **GET** /subscriptions/{subscription}/transactions/outcoming/spei | Consulta de transferencias realizadas
[**register_outgoing_spei_transaction_using_post**](TransferenciasSPEIApi.md#register_outgoing_spei_transaction_using_post) | **POST** /subscriptions/{subscription}/transactions/outcoming/spei | Registro de transferencias


# **drop_transactions_pending_using_delete**
> drop_transactions_pending_using_delete(request_id, subscription)

Eliminación de transferencias SPEI® pendientes

Elimina un conjunto de transferencias a realizar en la cuenta del cliente Monex relacionada a la suscripción, las transferencias no deben haber sido confirmadas por el cliente.

### Example
```ruby
# load the gem
require 'wire4_client'
# setup authorization
Wire4Client.configure do |config|
  # Configure OAuth2 access token for authorization: wire4_aut_app_user_spei
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Wire4Client::TransferenciasSPEIApi.new

request_id = 'request_id_example' # String | Identificador de las transferencias a eliminar

subscription = 'subscription_example' # String | El identificador de la suscripción a esta API


begin
  #Eliminación de transferencias SPEI® pendientes
  api_instance.drop_transactions_pending_using_delete(request_id, subscription)
rescue Wire4Client::ApiError => e
  puts "Exception when calling TransferenciasSPEIApi->drop_transactions_pending_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **String**| Identificador de las transferencias a eliminar | 
 **subscription** | **String**| El identificador de la suscripción a esta API | 

### Return type

nil (empty response body)

### Authorization

[wire4_aut_app_user_spei](../README.md#wire4_aut_app_user_spei)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **incoming_spei_transactions_report_using_get**
> Array&lt;Deposit&gt; incoming_spei_transactions_report_using_get(subscription)

Consulta de transferencias recibidas

Realiza una consulta de las transferencias recibidas (depósitos) en la cuenta del cliente Monex relacionada a la suscripción, las transferencias que regresa este recuso son únicamente las transferencias  recibidas durante el día en el que se realiza la consulta.

### Example
```ruby
# load the gem
require 'wire4_client'
# setup authorization
Wire4Client.configure do |config|
  # Configure OAuth2 access token for authorization: wire4_aut_app_user_spei
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Wire4Client::TransferenciasSPEIApi.new

subscription = 'subscription_example' # String | El identificador de la suscripción a esta API


begin
  #Consulta de transferencias recibidas
  result = api_instance.incoming_spei_transactions_report_using_get(subscription)
  p result
rescue Wire4Client::ApiError => e
  puts "Exception when calling TransferenciasSPEIApi->incoming_spei_transactions_report_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription** | **String**| El identificador de la suscripción a esta API | 

### Return type

[**Array&lt;Deposit&gt;**](Deposit.md)

### Authorization

[wire4_aut_app_user_spei](../README.md#wire4_aut_app_user_spei)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **outgoing_spei_transactions_report_using_get**
> Array&lt;Payment&gt; outgoing_spei_transactions_report_using_get(subscription, opts)

Consulta de transferencias realizadas

Consulta las transferencias realizadas en la cuenta del cliente Monex relacionada a la suscripción, las transferencias que regresa este recuso son únicamente las transferencias recibidas en el día en el que se realiza la consulta.<br>Se pueden realizar consultas por <strong>order_id</strong> al realizar este tipo de consultas no importa el día en el que se realizó la transferencia

### Example
```ruby
# load the gem
require 'wire4_client'
# setup authorization
Wire4Client.configure do |config|
  # Configure OAuth2 access token for authorization: wire4_aut_app_user_spei
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Wire4Client::TransferenciasSPEIApi.new

subscription = 'subscription_example' # String | El identificador de la suscripción a esta API

opts = { 
  order_id: 'order_id_example' # String | Identificador de la orden a buscar
}

begin
  #Consulta de transferencias realizadas
  result = api_instance.outgoing_spei_transactions_report_using_get(subscription, opts)
  p result
rescue Wire4Client::ApiError => e
  puts "Exception when calling TransferenciasSPEIApi->outgoing_spei_transactions_report_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription** | **String**| El identificador de la suscripción a esta API | 
 **order_id** | **String**| Identificador de la orden a buscar | [optional] 

### Return type

[**Array&lt;Payment&gt;**](Payment.md)

### Authorization

[wire4_aut_app_user_spei](../README.md#wire4_aut_app_user_spei)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **register_outgoing_spei_transaction_using_post**
> TokenRequiredResponse register_outgoing_spei_transaction_using_post(subscription, transactions)

Registro de transferencias

Registra un conjunto de transferencias a realizar en la cuenta del cliente Monex relacionada a la suscripción, las transferencias deben ser confirmadas por el cliente para que se efectuen.

### Example
```ruby
# load the gem
require 'wire4_client'
# setup authorization
Wire4Client.configure do |config|
  # Configure OAuth2 access token for authorization: wire4_aut_app_user_spei
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Wire4Client::TransferenciasSPEIApi.new

subscription = 'subscription_example' # String | El identificador de la suscripción a esta API

transactions = Wire4Client::TransactionsOutgoingRegister.new # TransactionsOutgoingRegister | Información de las transferencias SPEI de salida


begin
  #Registro de transferencias
  result = api_instance.register_outgoing_spei_transaction_using_post(subscription, transactions)
  p result
rescue Wire4Client::ApiError => e
  puts "Exception when calling TransferenciasSPEIApi->register_outgoing_spei_transaction_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription** | **String**| El identificador de la suscripción a esta API | 
 **transactions** | [**TransactionsOutgoingRegister**](TransactionsOutgoingRegister.md)| Información de las transferencias SPEI de salida | 

### Return type

[**TokenRequiredResponse**](TokenRequiredResponse.md)

### Authorization

[wire4_aut_app_user_spei](../README.md#wire4_aut_app_user_spei)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



