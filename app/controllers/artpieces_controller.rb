class ArtpiecesController < ApplicationController
  def index
    if params[:query].present?
      @artpieces = Artpiece.search_by_title_and_artist(params[:query])
    else
      @artpieces = Artpiece.all
    end
  end

  def new
    @artpiece = Artpiece.new
  end

  def create
    @artpiece = Artpiece.new(artpiece_params)
    @artpiece.user = current_user
    @artpiece.save
    redirect_to artpiece_path(@artpiece)
  end

  def show
    @booking = Booking.new
    @artpiece = Artpiece.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @artpiece = Artpiece.find(params[:id])
  end

  def update
    @artpiece = Artpiece.find(params[:id])
    @artpiece.update(artpiece_params)
    redirect_to artpiece_path(@artpiece)
  end

  def destroy
    @artpiece = Artpiece.find(params[:id])
    @artpiece.destroy
    redirect_to root_path
  end

  private

  def artpiece_params
    params.require(:artpiece).permit(:title, :artist, :description, :price, :availability, :photo)
  end

end
