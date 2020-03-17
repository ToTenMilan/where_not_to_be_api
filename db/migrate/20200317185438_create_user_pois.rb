class CreateUserPois < ActiveRecord::Migration[5.0]
  def change
    create_table :user_pois do |t|
      t.references :user, foreign_key: true
      t.references :point_of_interest, foreign_key: true

      t.timestamps
    end
  end
end
