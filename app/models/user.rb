class User < ApplicationRecord
  scope :not_visited, -> day { where('last_visit <= ?', Date.current - eval("#{day}.day")) }
end
