class CreatePointOfInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :point_of_interests do |t|
      t.string :name
      t.float :lat, {:precision=>10, :scale=>6}
      t.float :lng, {:precision=>10, :scale=>6}

      t.timestamps
    end
  end
end
