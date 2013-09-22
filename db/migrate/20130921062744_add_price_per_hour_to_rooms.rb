class AddPricePerHourToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :price_per_hour, :decimal
  end
end
