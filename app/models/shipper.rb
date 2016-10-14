class Shipper < ApplicationRecord
  default_scope {order(:price)}
  scope :by_country, -> country { where(country: country) unless country.empty? }
  scope :by_city, -> city { where(city: city) unless city.empty? }
  scope :by_price, -> price { where(price: price) unless price.empty? }
  scope :range_weight, -> weight { where('weight_from <= ? and weight_to >= ?', weight, weight) unless weight.empty?}
end
