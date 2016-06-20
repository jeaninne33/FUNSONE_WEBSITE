class Gallery < ActiveRecord::Base
    has_many :paintings
    validates :nombre ,:fecha,:lugar, :presence => true
    validates :nombre, uniqueness: true
end
