class Comment < ApplicationRecord
  # adds validation to user_comment input to prevent user submitting an empty post
  validates :user_comment, presence: true
  belongs_to :user
  belongs_to :wine_listing

  # renders data in a customised format that is more meaningful
  def transform_comment
    return {
             comment: self.user_comment,
             updated: self.updated_at.strftime("%d/%m/%Y %R"),
             username: self.user.username,
             wine_listing_id: self.wine_listing_id,
             user_id: self.user_id,
             id: self.id,
           }
  end
end
