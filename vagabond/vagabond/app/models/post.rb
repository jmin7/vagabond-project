class Post < ApplicationRecord
  belongs_to :city
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { maximum: 200}
  validates :body, presence: true 
end
