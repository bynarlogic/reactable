module ActionView
  module Helpers
    module RenderingHelper
      alias_method :orig_render, :render

      def render(options = {}, locals = {}, default: false, &block)
        render_default = -> {orig_render(options, locals, &block)}
        return render_default.() unless options.class.respond_to?(:reactable)

        if options.class.reactable && !default
          react_component(options.component_path, options.attributes)
        else
          render_default.()
        end
      end
    end
  end
end