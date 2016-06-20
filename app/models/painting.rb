class Painting < ActiveRecord::Base
  belongs_to :gallery
  mount_uploader :foto, AvatarUploader
  validates :nombre,:foto, :presence => true
end
