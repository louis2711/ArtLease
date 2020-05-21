class ArtpiecesController < ApplicationController
  def index
    @artpieces = Artpiece.all
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
    @artpiece = Artpiece.find(params[:id])
  end

  def edit
    @artpiece = Artpiece.find(params[:id])
  end

  def update
    @artpiece = Artpiece.find(params[:id])
    @artpiece.update(artpiece_params)
    redirect_to artpiece_path(@artpiece)
  end

  private

  def artpiece_params
    params.require(:artpiece).permit(:title, :artist, :description, :price, :availability, :photo)
  end

end
