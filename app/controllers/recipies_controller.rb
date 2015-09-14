class RecipiesController < ApplicationController
  def index
    @recipies = Recipie.all
  end

  def new
    @recipe = Recipie.new
  end

  def create
    recipy = Recipie.new(recipy_params)
    if recipy.save
      redirect_to recipies_url
    else
      render :new
    end
  end

  def show
    @recipie = Recipie.find(params[:id])
  end

  private

  def recipy_params
    params.require(:recipie).permit(:name)
  end

end
