module ArticlesHelper
  def has_image_article
    Article.where.not(image: nil)
  end
end
