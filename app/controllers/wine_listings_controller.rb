class WineListingsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  before_action :set_wine_listing, only: [:show, :update, :destroy]

  # GET /wine_listings
  def index
    @wine_listings = WineListing.order("created_at DESC")

    render json: @wine_listings
  end

  # GET /wine_listings/1
  def show
    if @wine_listing
      render json: @wine_listing
    else
      render json: { "error": "This wine listing cannot be located, reconfirm the ID" }, status: :not_found
    end
  end

  # POST /wine_listings
  def create
    if current_user.admin? &&
      @wine_listing = WineListing.new(wine_listing_params)

    # Specify authorisation here.
    # Admin role only function

      if @wine_listing.save
        render json: @wine_listing, status: :created, location: @wine_listing
      else
        render json: @wine_listing.errors, status: :unprocessable_entity
      end
    else
      render json: { message: "Please see administrator for creating new wine listings" }
    end
  end

  # PATCH/PUT /wine_listings/1
  def update
    
      if @wine_listing.update(wine_listing_params)
        render json: @wine_listing
      else
        render json: @wine_listing.errors, status: :unprocessable_entity
      end
  end

  # DELETE /wine_listings/1
  def destroy
    @wine_listing.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wine_listing
    @wine_listing = WineListing.find_by_id(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def wine_listing_params
    params.require(:wine_listing).permit(:brand, :grape_variety, :year, :category, :country, :region, :description)
  end
end
