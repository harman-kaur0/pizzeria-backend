class Item < ApplicationRecord
  belongs_to :category
  serialize: ingredients
end
