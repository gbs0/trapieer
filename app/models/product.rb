class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :transactions
  belongs_to :user

end
