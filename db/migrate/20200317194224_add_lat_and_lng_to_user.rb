class AddLatAndLngToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lat, :float, {:precision=>10, :scale=>6}
    add_column :users, :lng, :float, {:precision=>10, :scale=>6}
  end
end
