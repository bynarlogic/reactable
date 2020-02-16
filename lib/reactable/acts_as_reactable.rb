module Reactable
  module ActsAsReactable
    extend ActiveSupport::Concern

    class_methods do
      def acts_as_reactable(options = {})
      end
    end

    included do
      def reactable
        true
      end
    end
  end
end