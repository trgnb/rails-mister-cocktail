class CocktailsController < ApplicationController
  def index
    # check if there is a query param
    @query = params[:query]
    if @query
      # is there a cocktail that matches this name?
      @cocktail = Cocktail.find_by(name: @query)
      redirect_to cocktail_path(@cocktail) if @cocktail
    end
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params.require(:cocktail).permit(:name))
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end
end
