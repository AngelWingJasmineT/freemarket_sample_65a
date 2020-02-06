class CategoryController < ApplicationController

  def new
    @children = ItemCategory.find(params[:parent_id]).children
    respond_to do |format|
      format.html
      format.json
    end
  end

end