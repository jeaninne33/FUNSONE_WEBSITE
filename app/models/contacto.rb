class Contacto < ActiveRecord::Base
    validates :nombre ,:email, :ip,:msj, presence: { message: " Todos los campos son Obligatorios" }
end
