class ApplicationRecord < ActiveRecord::Base
  default_scope {order(:last_visit)}
  self.abstract_class = true
end
