class CreateHelpRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :help_requests do |t|
      t.references :user, foreign_key: true
      t.integer :request_type, null: false, default: 0
      t.string :title, null: false
      t.string :description
      t.integer :status, null: false, default: 0
      t.float :lat, precision: 10, scale: 6
      t.float :lng, precision: 10, scale: 6
      t.datetime :time_from
      t.datetime :time_to
      t.integer :target
      t.string :unit

      t.timestamps
    end
  end
end
