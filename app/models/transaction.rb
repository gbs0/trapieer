class Transaction < ApplicationRecord
  belongs_to :user, :product
  # Uma transação não poderia ter vários produtos ? (: 
end
