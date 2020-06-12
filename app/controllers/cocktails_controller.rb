class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
  @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save



    # no need for app/views/restaurants/create.html.erb
    redirect_to cocktail_path(@cocktail)

  end

  def edit
  end

  def update
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy


  end



private


def cocktail_params
params.require(:cocktail).permit(:name)


  end
end
