class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.create review_params
    recipe = Recipe.find params[:recipe_id]
    recipe.reviews << review
    redirect_to recipe
  end

  def edit
    @review = Review.find params[:id]
  end

  def update
    review = Review.find params[:id]
    review.update review_params
    redirect_to review
  end

  def show
    @review = Review.find params[:id]
  end

  def destroy
    review = Review.find params[:id]
    review.destroy
    redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:tagline, :content, :rating, :recipe_id, :user_id)
  end
end
