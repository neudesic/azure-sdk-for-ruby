# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.


module Azure::ARM::Network
  module Models
    #
    # Properties of Request routing rule of application gateway
    #
    class ApplicationGatewayRequestRoutingRulePropertiesFormat

      include MsRestAzure

      # @return Gets or sets the rule type. Possible values for this property
      # include: 'Basic'.
      attr_accessor :rule_type

      # @return [SubResource] Gets or sets backend address pool resource of
      # application gateway
      attr_accessor :backend_address_pool

      # @return [SubResource] Gets or sets frontend port resource of
      # application gateway
      attr_accessor :backend_http_settings

      # @return [SubResource] Gets or sets http listener resource of
      # application gateway
      attr_accessor :http_listener

      # @return [String] Gets or sets Provisioning state of the request
      # routing rule resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @backend_address_pool.validate unless @backend_address_pool.nil?
        @backend_http_settings.validate unless @backend_http_settings.nil?
        @http_listener.validate unless @http_listener.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.rule_type
        output_object['ruleType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.backend_address_pool
        unless serialized_property.nil?
          serialized_property = SubResource.serialize_object(serialized_property)
        end
        output_object['backendAddressPool'] = serialized_property unless serialized_property.nil?

        serialized_property = object.backend_http_settings
        unless serialized_property.nil?
          serialized_property = SubResource.serialize_object(serialized_property)
        end
        output_object['backendHttpSettings'] = serialized_property unless serialized_property.nil?

        serialized_property = object.http_listener
        unless serialized_property.nil?
          serialized_property = SubResource.serialize_object(serialized_property)
        end
        output_object['httpListener'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ApplicationGatewayRequestRoutingRulePropertiesFormat]
      # Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ApplicationGatewayRequestRoutingRulePropertiesFormat.new

        deserialized_property = object['ruleType']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = ApplicationGatewayRequestRoutingRuleType.constants.any? { |e| ApplicationGatewayRequestRoutingRuleType.const_get(e).to_s.downcase == deserialized_property.downcase }
          fail MsRest::DeserializationError.new('Error occured while deserializing the enum', nil, nil, nil) unless enum_is_valid
        end
        output_object.rule_type = deserialized_property

        deserialized_property = object['backendAddressPool']
        unless deserialized_property.nil?
          deserialized_property = SubResource.deserialize_object(deserialized_property)
        end
        output_object.backend_address_pool = deserialized_property

        deserialized_property = object['backendHttpSettings']
        unless deserialized_property.nil?
          deserialized_property = SubResource.deserialize_object(deserialized_property)
        end
        output_object.backend_http_settings = deserialized_property

        deserialized_property = object['httpListener']
        unless deserialized_property.nil?
          deserialized_property = SubResource.deserialize_object(deserialized_property)
        end
        output_object.http_listener = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
