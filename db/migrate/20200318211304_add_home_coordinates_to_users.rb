class AddHomeCoordinatesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :home_lat, :float
    add_column :users, :home_lng, :float
  end
end
