=begin
#Wire4RestAPI

#Referencia de la API de Wire4

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'date'

module Wire4Client
  # El mensaje que se envía mediante (webHook) con la información del transferencia de salida realizada
  class MessagePayment
    # Cuenta del ordenante
    attr_accessor :account

    # Monto de la transferencia
    attr_accessor :amount

    # Cuenta del beneficiario
    attr_accessor :beneficiary_account

    # Banco del beneficiario
    attr_accessor :beneficiary_bank

    # Nombre del beneficiario
    attr_accessor :beneficiary_name

    attr_accessor :cep

    # Clave de rastreo de la transferencia
    attr_accessor :clave_rastreo

    # Concepto de la transferencia de salida
    attr_accessor :concept

    # Fecha de confirmación de la transferencia de salida
    attr_accessor :confirm_date

    # Código de la moneda de la transferencia de salida
    attr_accessor :currency_code

    # Mensaje de detención de Monex de la transferencia de salida
    attr_accessor :detention_message

    # La descripción de Monex de la transferencia de salida
    attr_accessor :monex_description

    # El identificador de la transferencia de salida
    attr_accessor :order_id

    # El identificador de la orden de pago de Monex de la transferencia de salida
    attr_accessor :payment_order_id

    # Referecia de la transferencia
    attr_accessor :reference

    # El identificador, en esta API, de la petición de envío de la transferencia de salida
    attr_accessor :request_id

    # El estado de la transferencia de salida
    attr_accessor :status_code

    # El identificador de Monex de la transferencia de salida
    attr_accessor :transaction_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account' => :'account',
        :'amount' => :'amount',
        :'beneficiary_account' => :'beneficiary_account',
        :'beneficiary_bank' => :'beneficiary_bank',
        :'beneficiary_name' => :'beneficiary_name',
        :'cep' => :'cep',
        :'clave_rastreo' => :'clave_rastreo',
        :'concept' => :'concept',
        :'confirm_date' => :'confirm_date',
        :'currency_code' => :'currency_code',
        :'detention_message' => :'detention_message',
        :'monex_description' => :'monex_description',
        :'order_id' => :'order_id',
        :'payment_order_id' => :'payment_order_id',
        :'reference' => :'reference',
        :'request_id' => :'request_id',
        :'status_code' => :'status_code',
        :'transaction_id' => :'transaction_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account' => :'String',
        :'amount' => :'Float',
        :'beneficiary_account' => :'String',
        :'beneficiary_bank' => :'MessageInstitution',
        :'beneficiary_name' => :'String',
        :'cep' => :'MessageCEP',
        :'clave_rastreo' => :'String',
        :'concept' => :'String',
        :'confirm_date' => :'DateTime',
        :'currency_code' => :'String',
        :'detention_message' => :'String',
        :'monex_description' => :'String',
        :'order_id' => :'String',
        :'payment_order_id' => :'Integer',
        :'reference' => :'Integer',
        :'request_id' => :'String',
        :'status_code' => :'String',
        :'transaction_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'beneficiary_account')
        self.beneficiary_account = attributes[:'beneficiary_account']
      end

      if attributes.has_key?(:'beneficiary_bank')
        self.beneficiary_bank = attributes[:'beneficiary_bank']
      end

      if attributes.has_key?(:'beneficiary_name')
        self.beneficiary_name = attributes[:'beneficiary_name']
      end

      if attributes.has_key?(:'cep')
        self.cep = attributes[:'cep']
      end

      if attributes.has_key?(:'clave_rastreo')
        self.clave_rastreo = attributes[:'clave_rastreo']
      end

      if attributes.has_key?(:'concept')
        self.concept = attributes[:'concept']
      end

      if attributes.has_key?(:'confirm_date')
        self.confirm_date = attributes[:'confirm_date']
      end

      if attributes.has_key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.has_key?(:'detention_message')
        self.detention_message = attributes[:'detention_message']
      end

      if attributes.has_key?(:'monex_description')
        self.monex_description = attributes[:'monex_description']
      end

      if attributes.has_key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.has_key?(:'payment_order_id')
        self.payment_order_id = attributes[:'payment_order_id']
      end

      if attributes.has_key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.has_key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end

      if attributes.has_key?(:'status_code')
        self.status_code = attributes[:'status_code']
      end

      if attributes.has_key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account == o.account &&
          amount == o.amount &&
          beneficiary_account == o.beneficiary_account &&
          beneficiary_bank == o.beneficiary_bank &&
          beneficiary_name == o.beneficiary_name &&
          cep == o.cep &&
          clave_rastreo == o.clave_rastreo &&
          concept == o.concept &&
          confirm_date == o.confirm_date &&
          currency_code == o.currency_code &&
          detention_message == o.detention_message &&
          monex_description == o.monex_description &&
          order_id == o.order_id &&
          payment_order_id == o.payment_order_id &&
          reference == o.reference &&
          request_id == o.request_id &&
          status_code == o.status_code &&
          transaction_id == o.transaction_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account, amount, beneficiary_account, beneficiary_bank, beneficiary_name, cep, clave_rastreo, concept, confirm_date, currency_code, detention_message, monex_description, order_id, payment_order_id, reference, request_id, status_code, transaction_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Wire4Client.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end