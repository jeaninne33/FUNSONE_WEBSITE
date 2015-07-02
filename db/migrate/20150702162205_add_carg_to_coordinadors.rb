class AddCargToCoordinadors < ActiveRecord::Migration
  def change
    add_column :coordinadors, :cargo, :string
  end
end
