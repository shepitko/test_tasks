class User < ApplicationRecord
  default_scope {order(:last_visit)}
  scope :not_visited, -> day { where('last_visit <= ?', Date.current - eval("#{day}.day")).where(cnt_msgs:0) }
end
