class Hawaiian < ApplicationRecord

 mount_uploader :image2, ImageUploader

 belongs_to :user
end
