class Article < ApplicationRecord
  belongs_to :user
  has_one :location

  accepts_nested_attributes_for :location

  validates :user_id, presence: true
  validates :title, presence: true
  validates :text, presence: true
  mount_uploader :image, ImageUploader
end
