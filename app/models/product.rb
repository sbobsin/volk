class Product < ApplicationRecord
  validates :name, presence: true 
  has_many_attached :images

  def to_s
    name
  end
end
