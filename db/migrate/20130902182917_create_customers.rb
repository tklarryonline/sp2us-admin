class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :username
      t.string :full_name
      t.string :email_address
      t.string :image_url

      t.timestamps
    end
  end
end
