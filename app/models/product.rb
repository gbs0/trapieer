class Product < ApplicationRecord
	has_many :transactions
  # belongs_to :user_id, foreign_key: 'author_id'
  belongs_to :user
end
