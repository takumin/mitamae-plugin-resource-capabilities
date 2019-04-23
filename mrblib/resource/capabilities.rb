module ::MItamae
  module Plugin
    module Resource
      class Capabilities < ::MItamae::Resource::Base
        define_attribute :action, default: :present
        define_attribute :path, type: String, required: true
        define_attribute :name, type: [String, Symbol], default_name: true
        define_attribute :effective, type: [TrueClass, FalseClass], default: false,
        define_attribute :permitted, type: [TrueClass, FalseClass], default: false,
        define_attribute :inheritable, type: [TrueClass, FalseClass], default: false,

        self.available_actions = [:present, :absent]
      end
    end
  end
end
