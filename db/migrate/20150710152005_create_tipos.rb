class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.text :objetivo
      t.text :requisito
      t.text :tipo
      t.text :contactos

      t.timestamps null: false
    end
  end
end
