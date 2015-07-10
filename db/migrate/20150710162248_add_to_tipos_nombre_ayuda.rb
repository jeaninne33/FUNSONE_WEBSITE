class AddToTiposNombreAyuda < ActiveRecord::Migration
  def up
  	add_column :tipos , :nombre_ayuda , :string
  end
  def down
  	remove_colum :tipos , :nombre_ayuda
  	
  end
end
