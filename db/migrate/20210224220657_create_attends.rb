class CreateAttends < ActiveRecord::Migration[6.1]
  def change
    create_table :attends do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :event, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
