class Solicitud < ActiveRecord::Base
    validates :nombre1 ,:apellido1,:direccion, :cedula, :ayuda, :sexo, :fecha_nac, :fecha_soli, :municipio, :presence => true
end
