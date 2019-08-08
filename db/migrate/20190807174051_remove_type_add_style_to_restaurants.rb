class RemoveTypeAddStyleToRestaurants < ActiveRecord::Migration[5.2]
  def change
            remove_column :restaurants, :type, :string
            add_column :restaurants, :style, :string
  end
end
