class AddFuildsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bod, :datetime
    add_column :users, :address, :string
    add_column :users, :gender, :string
    add_column :users, :designation, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :pincode, :string
  end
end
 