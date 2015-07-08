class AddImageToCoordinadors < ActiveRecord::Migration
  def change
    add_column :coordinadors, :image, :string
  end
end
