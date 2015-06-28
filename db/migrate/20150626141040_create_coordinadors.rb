class CreateCoordinadors < ActiveRecord::Migration
  def change
    create_table :coordinadors do |t|
      t.string :nombre
      t.string :apellido
      t.string :foto
      t.string :twitter
      t.string :facebook
      t.string :correo
      t.string :linkd

      t.timestamps null: false
    end
  end
end
