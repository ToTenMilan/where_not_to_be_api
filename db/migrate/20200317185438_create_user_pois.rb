class CreateUserPois < ActiveRecord::Migration[5.0]
  def change
    create_table :user_pois do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.references :user, foreign_key: true
      t.references :point_of_interest, foreign_key: true

      t.timestamps
    end
  end
end
