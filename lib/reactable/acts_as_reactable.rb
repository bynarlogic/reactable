module Reactable
  module ActsAsReactable
    extend ActiveSupport::Concern

    class_methods do
      cattr_accessor :reactable_options, :reactable

      def acts_as_reactable(options = {})
        cattr_accessor :reactable_options, default: options
        cattr_accessor :reactable, default: true
      end
    end

    included do
      def component_path
        self.class.reactable_options[:path] || "#{self.class.name.downcase.pluralize}/#{self.class.name}"
      end
    end
  end
end