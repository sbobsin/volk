class Product < ApplicationRecord
  validates :name, :price, presence: true 
  has_many_attached :images

  def to_s
    name
  end
end
