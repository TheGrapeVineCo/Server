class MembersController < ApplicationController
  before_action :authenticate_user!

  def show
    render json: { message: "If you see this, you're in!" }
  end

  private

  # Unsure these params are required, or if params should be named 'user'
  def user_params
    params.require(:user).permit(wine_listing_ids: [])
  end
end
