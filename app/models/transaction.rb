class Transaction < ApplicationRecord
  belongs_to :seller, :class_name => "User"
  belongs_to :buyer, :class_name => "User"
  has_many :transaction_items
  has_many :items, :through => :transaction_items
end
