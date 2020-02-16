module ActionView
  module Helpers
    module RenderingHelper
      def render(options = {}, locals = {}, &block
        super unless options.class.respond_to?(:reactable)
        p 'i react to things'
      end
    end
  end
end