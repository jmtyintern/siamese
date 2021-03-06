class Article < ApplicationRecord
  belongs_to :user
  belongs_to :location
  validates :user_id, presence: true
  validates :title, presence: true
  validates :text, presence: true
  mount_uploader :image, ImageUploader

  module ArticleDecorator
    def publication_status
      if published?
        "Published at #{published_at.strftime('%A, %B %e')}"
      else
        "Unpublished"
      end
    end
  end
end
