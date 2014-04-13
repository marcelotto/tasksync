module TaskSync
  class Project < Entity

    attributes :provider
    attributes :name
    attributes :priority

    # TODO: specify all attributes

    def initialize(attr={})
      super
    end

    def self.get(criteria={})
      raise ArgumentError, 'no provider given' unless provider = criteria.include?(:provider)
      raise ArgumentError, 'no name given' unless name = criteria.include?(:name)

    end

  end
end