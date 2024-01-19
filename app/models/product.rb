class Product < ApplicationRecord
  validates :name, presence: true 
  has_many_attached :images
  has_rich_text :description
  
  def to_s
    name
  end
end
