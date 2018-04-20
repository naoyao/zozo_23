class Image < ApplicationRecord
  # mount_uploader :image, ImageUploader
  belongs_to :product
  has_many :stocks
end
