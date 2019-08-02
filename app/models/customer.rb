class Customer < ApplicationRecord
    has_many :items
    has_many :bills, through: :items 
end
