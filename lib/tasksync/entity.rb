module TaskSync
  class Entity
    # Rails 4: include ActiveModel::Model
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    extend ActiveModel::Translation
    include ActiveModel::Validations

    include ActiveModel::AttributeMethods

    attribute_method_suffix '?'

    def initialize(attr={})
      # TODO: init_attributes(attr)
    end

    def self.attributes(*names)
      attr_accessor(*names)
      define_attribute_methods(names)
    end

    def persisted?
      false
    end

  protected

    def attribute?(attribute)
      send(attribute).present?
    end

  end
end