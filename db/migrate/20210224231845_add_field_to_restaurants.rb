class AddFieldToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :yelp_url, :string
  end
end
