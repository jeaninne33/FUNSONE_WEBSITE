class Noticium < ActiveRecord::Base
  mount_uploader :foto, AvatarUploader
	validates :titulo, :mensaje, :foto, :categoria, :presence => true
end
