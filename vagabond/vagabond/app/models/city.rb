class City < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :city_name, presence: true
end
