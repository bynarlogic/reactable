class ApplicationRecord < ActiveRecord::Base
  include Reactable::ActsAsReactable
  self.abstract_class = true
end
