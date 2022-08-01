class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :jwt_authenticatable, :registerable, jwt_revocation_strategy: JwtDenylist
  # validates :username, presence: true, uniqueness: true, length: { maximum: 20 }
  # validates :email, presence: true, uniqueness: true
  has_many :comments
  has_many :wine_listings, through: :comments

  def make_admin!
    self.update_attribute(:admin, true)
  end
end
