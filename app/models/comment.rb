class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :wine_listing

  # renders data in a customised format that is more meaningful
  def transform_comment
    return {
             comment: self.user_comment,
             posted: self.updated_at,
             username: self.user.username,
           }
  end
end
