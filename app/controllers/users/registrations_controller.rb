class Users::RegistrationsController < Devise::RegistrationsController
  before_action :sign_up_params, if: :devise_controller?

  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: { message: "Signed up sucessfully." }
  end

  def register_failed
    render json: { message: "Something went wrong." }
  end

  private

  # Notice the name of the method
  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :admin)
  end
end
