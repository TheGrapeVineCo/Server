class WineListingsController < ApplicationController
  before_action :set_wine_listing, only: [:show, :update, :destroy]

  # GET /wine_listings
  def index
    @wine_listings = WineListing.all

    render json: @wine_listings
  end

  # GET /wine_listings/1
  def show
    render json: @wine_listing
  end

  # POST /wine_listings
  def create
    @wine_listing = WineListing.new(wine_listing_params)

    if @wine_listing.save
      render json: @wine_listing, status: :created, location: @wine_listing
    else
      render json: @wine_listing.errors, status: :unprocessable_entity
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
      @wine_listing = WineListing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wine_listing_params
      params.require(:wine_listing).permit(:brand, :grape_variety, :year, :category, :country, :region, :description)
    end
end
