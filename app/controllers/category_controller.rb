class CategoryController < ApplicationController
  def index
    @categories = Category.all.order(:tag)
    @posts = Post.all.order(:tag)
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
  	@posts = @category.posts
  end
end
