# Wire4Client::WebhookResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**events** | **Array&lt;String&gt;** | Tipos de eventos de los cuales Wire4 te enviará información. | [optional] 
**name** | **String** | Nombre del webhook. | [optional] 
**secret** | **String** | Llave con la cual se debe de identificar que el webhook fue enviado por Wire4, para mayor información revisar la guía de notificaciones (https://wire4.mx/#/guides/notificaciones), en la sección de  \&quot;Comprobación de firmas de Webhook\&quot;. | [optional] 
**status** | **String** | Estatus en el que se encuentra el webhook | [optional] 
**url** | **String** | URL a la cual Wire4 enviará las notificaciones cuando un evento ocurra. | [optional] 
**wh_uuid** | **String** | Identificador del webhook. | [optional] 


