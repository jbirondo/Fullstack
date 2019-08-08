class AddColumnsToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :neighborhood, :string
    add_column :restaurants, :dining_style, :string
    add_column :restaurants, :dress_code, :string
    add_column :restaurants, :chef, :string
  end
end
