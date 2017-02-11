class Article < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :title, presence: true
  validates :text, presence: true
  mount_uploader :image, ImageUploader
end
