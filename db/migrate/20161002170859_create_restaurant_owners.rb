class CreateRestaurantOwners < ActiveRecord::Migration
  def change
    create_table :restaurant_owners do |t|
      t.string :name
      t.string :last_name

      t.timestamps

    end
  end
end
