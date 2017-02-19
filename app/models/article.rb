class Article < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :favorites, dependent: :destroy
  validates :user_id, presence: true
  validates :title, presence: true
  validates :text, presence: true
  mount_uploader :image, ImageUploader
end
