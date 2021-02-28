class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.boolean :casual
      t.boolean :Monday
      t.boolean :Tuesday
      t.boolean :Wednesday
      t.boolean :Thursday
      t.boolean :Friday
      t.boolean :Saturday
      t.boolean :Sunday
      t.string :area
      t.string :img_url

      t.timestamps
    end
  end
end
