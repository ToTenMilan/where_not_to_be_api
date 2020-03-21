class AddDensityToPois < ActiveRecord::Migration[5.0]
  def change
    add_column :point_of_interests, :density, :integer
  end
end
