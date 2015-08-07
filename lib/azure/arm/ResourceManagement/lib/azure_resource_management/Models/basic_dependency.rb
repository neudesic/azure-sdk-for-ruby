# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.


module Azure::ARM::Resources
  module Models
    #
    # Deployment dependency information.
    #
    class BasicDependency

      include MsRestAzure

      # @return [String] Gets or sets the ID of the dependency.
      attr_accessor :id

      # @return [String] Gets or sets the dependency resource type.
      attr_accessor :resource_type

      # @return [String] Gets or sets the dependency resource name.
      attr_accessor :resource_name

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.id
        output_object['id'] = serialized_property unless serialized_property.nil?

        serialized_property = object.resource_type
        output_object['resourceType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.resource_name
        output_object['resourceName'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [BasicDependency] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = BasicDependency.new

        deserialized_property = object['id']
        output_object.id = deserialized_property

        deserialized_property = object['resourceType']
        output_object.resource_type = deserialized_property

        deserialized_property = object['resourceName']
        output_object.resource_name = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
