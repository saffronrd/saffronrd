class Galery < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
