class CategoriesController < ApplicationController
  before_action :set_category, only: [:update, :destroy]

  def index
    @categories = Category.all
    render json:@categories
  end

  def show
    @categories = Category.find(params[:id])
    render json:@categories
  end

  def edit
    @categories = Category.find(params[:id])
    render json:@categories
  end

  def create
    @categories = Category.new(category_params)
      if @category.save
        render json: @category, status: :created, location: @category
      else
        render json: @category.errors, status: :unprocessable_entity
      end
  end

  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @category.destroy
    render json: { 
      status: 'SUCCESS', 
      message: 'Deleted the category'
    }
  end

  private
  def category_params
    params.require(:category).permit(:title)
  end
  def set_category
    @category = category.find(params[:id])
  end
end
