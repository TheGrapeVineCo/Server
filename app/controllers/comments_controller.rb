class CommentsController < ApplicationController
  # ensures only authenticated users can post
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_comment, only: [:show, :update, :destroy]
  before_action :verify_ownership, only: [:update, :destroy]

  # GET /comments
  def index
    # @comments = Comment.transform_comment
    # @comments = Comment.order("updated_at DESC")
    @comments = []
    Comment.order("updated_at DESC").each do |comment|
      @comments << comment.transform_comment
    end
    render json: @comments
  end

  # GET /comments/1
  def show
    if @comment
      render json: @comment.transform_comment
    else
      render json: { "error": "This comment cannot be located, reconfirm the ID" }, status: :not_found
    end
  end

  # POST /comments - only a user that is logged in & authorised can create a comment
  def create
    @comment = current_user.comments.create(comment_params)

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    # may need to update the params
    # params.require(:comment).permit(:username, :wine_listing_id, :user_comment)
    params.require(:comment).permit(:user_id, :wine_listing_id, :user_comment)
  end

  def verify_ownership
    if current_user.id != @comment.user.id
      render json: { error: "Unauthorised action" }
    end
  end
end
