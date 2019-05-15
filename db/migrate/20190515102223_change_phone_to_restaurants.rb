class ChangePhoneToRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :phone_number, :integer
    add_column :restaurants, :phone_number, :string
  end
end
