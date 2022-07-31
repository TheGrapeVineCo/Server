class Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json

    # POST /comments
  # def create
  #   @user = User.create(sign_up_params);
  #   # if @comment.save
  #   #   render json: @comment, status: :created, location: @comment
  #   # else
  #   #   render json: @comment.errors, status: :unprocessable_entity
  #   # end
  # end

    private
  
    def respond_with(resource, _opts = {})
      register_success && return if resource.persisted?
  
      register_failed
    end
  
    def register_success
      render json: { message: 'Signed up sucessfully.' }
    end
  
    def register_failed
      render json: { message: "Something went wrong." }
    end

    # Notice the name of the method
    # def sign_up_params
    #   params.require(:user).permit(:username, :email, :password)
    # end

end