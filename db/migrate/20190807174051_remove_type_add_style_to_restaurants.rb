class RemoveTypeAddStyleToRestaurants < ActiveRecord::Migration[5.2]
  def change
            add_column :restaurants, :style, :string
  end
end
# heroku restart; heroku pg:reset DATABASE --confirm opentableclone; heroku run rake db:migrate