class Coordinador < ActiveRecord::Base
	  mount_uploader :image, AvatarUploader
end
