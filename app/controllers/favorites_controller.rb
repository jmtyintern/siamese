class FavoritesController < ApplicationController
  def like
    @article = Article.find(params[:article_id])
    favorite = current_user.favorites.build(article_id: @article.id)
    favorite.save
  end


  def unlike
    @article = Article.find(params[:article_id])
    favorite = current_user.favorites.find_by(article_id: @article.id)
    favorite.destroy
  end
end
