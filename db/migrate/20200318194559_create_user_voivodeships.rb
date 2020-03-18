class CreateUserVoivodeships < ActiveRecord::Migration[5.0]
  def change
    create_table :user_voivodeships do |t|
      t.references :user, foreign_key: true
      t.references :voivodeship, foreign_key: true

      t.timestamps
    end
  end
end
