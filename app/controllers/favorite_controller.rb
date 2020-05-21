class FavoriteController < ApplicationController
  before_action :set_favorite, only: [:destroy]
  def index
    @favorites = Favorite.all
  end

  def create
    @favorite = Favorite.new(favorite_params)

    if @favorite.save
      respond_to do |format|
        format.html { redirect_to '/favoritos', notice: 'Item Favoritado com sucesso.' }
        format.json { render :show, status: :created, location: @favorite }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to favoritos_path, notice: 'Favorito excluido com Sucesso.' }
      format.json { head :no_content }
    end
  end

  private
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
  def favorite_params
    params.require(:favorite).permit(:id, :url)
  end
end
