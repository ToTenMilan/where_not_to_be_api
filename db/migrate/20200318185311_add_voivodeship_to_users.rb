class AddVoivodeshipToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :voivodeship, :string
  end
end
