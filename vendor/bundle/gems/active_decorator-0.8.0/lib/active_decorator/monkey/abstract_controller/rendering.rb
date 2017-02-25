# frozen_string_literal: true
module ActiveDecorator
  module Monkey
    module AbstractController
      module Rendering
        def view_assigns
          hash = super
          hash.each_value do |v|
            ActiveDecorator::Decorator.instance.decorate v
          end
          hash
        end
      end
    end
  end
end
