class RecipesController < ApplicationController
  before_action :authenticate

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @books = Book.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    # @book_id = @recipe.book_id
    if @recipe.save
      redirect_to root_path    # add (@book_id) to redirect
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find_by(:name => params[:id])
    @books = Book.all
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @books = Book.all
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to '/recipes'
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to '/recipes'
  end

  private

  def recipe_params 
    params.require(:recipe).permit(:name, :meal_type, :cooktime, :servingsize, :instructions, :image_url, :book_id, :ingredient_ids => [])
    
  end
end