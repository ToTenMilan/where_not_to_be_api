class AddPointsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :integer, :string
  end
end
