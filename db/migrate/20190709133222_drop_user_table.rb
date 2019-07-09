class DropUserTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :email, :string
    remove_column :users, :phone_number, :string
    remove_column :users, :address, :string
  end
end
