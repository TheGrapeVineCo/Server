class WineListing < ApplicationRecord
  # Incorporates validation on WineListing attributes so admin cannot post a listing with data missing
  validates_presence_of :brand, :grape_variety, :year, :category, :country, :region, :description
end
