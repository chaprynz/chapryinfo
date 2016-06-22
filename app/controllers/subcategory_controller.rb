class SubcategoryController < ApplicationController
  def show
    @subcategories = Subcategory.all
    @subcategory = Subcategory.find(params[:id])
  	@posts = @subcategory.posts.order(:tag).page(params[:page]).per(25)
  end
end
