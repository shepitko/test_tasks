class User < ApplicationRecord
  default_scope {order(:last_visit)}
  scope :not_visited, -> day do
    where('last_visit <= ? and last_visit >= ?', eval("#{day}.day.ago"), eval("#{day + 1}.day.ago"))
  end
end
