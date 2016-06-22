class PostController < ApplicationController
  def show
    @categories = Category.all
    category = Category.find(params[:category_id])
  	@post = Post.find(params[:id])
  	@posts = category.posts
  end
end
