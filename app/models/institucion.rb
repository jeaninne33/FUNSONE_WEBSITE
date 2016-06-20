class Institucion < ActiveRecord::Base
  mount_uploader :organigrama, AvatarUploader
	mount_uploader :logo, AvatarUploader
	mount_uploader :foto1, AvatarUploader
	mount_uploader :foto2,  AvatarUploader
	mount_uploader :foto3, AvatarUploader
	mount_uploader :foto4, AvatarUploader
	mount_uploader :foto5, AvatarUploader
  validates :nombre , :mision,:descripcion,:vision, :presence => true
end
