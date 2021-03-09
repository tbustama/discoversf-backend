class DropTableAttend < ActiveRecord::Migration[6.1]
  def change
    drop_table :attends
  end
end
