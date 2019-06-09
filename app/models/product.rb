class Product < ApplicationRecord
  belongs_to :category
  belongs_to :sub_category
  mount_uploader :image, PictureUploader
  mount_uploader :big_image, PictureUploader
  mount_uploader :mini_image, PictureUploader

  scope :newest,->{order(created_at: :desc)}
  scope :bestseller,->{order(sell_times: :desc)}
  scope :feature,->{order(sell_times: :desc)}
  has_many :order_items
end
