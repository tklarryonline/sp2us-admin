class ChangeDescriptionForRooms < ActiveRecord::Migration
  def up
    change_column :rooms, :description, :text
  end

  def down
    change_column :rooms, :description, :string
  end
end
