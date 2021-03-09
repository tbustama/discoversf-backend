class AddEventToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :event, :boolean
  end
end
