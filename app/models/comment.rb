class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :wine_listing
end
