class WineListing < ApplicationRecord
  # Incorporates validation on WineListing attributes so admin cannot post a listing with data missing
  validates_presence_of :brand, :grape_variety, :year, :category, :country, :region, :description
  has_many :comments
  has_many :users, through: :comments
end
