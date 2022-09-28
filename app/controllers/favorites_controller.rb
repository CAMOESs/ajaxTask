class FavoritesController < ApplicationController

  respond_to :html, :json, :js
  def create

    current_user.favorites.create(blog_id: params[:blog_id])
    redirect_to blogs_path
  end

  def destroy
    current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to blogs_path
  end

end
