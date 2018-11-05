class Transaction < ApplicationRecord
  belongs_to :user, :product
end
