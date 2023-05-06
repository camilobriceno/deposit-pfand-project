class AddFirstLastNametoUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :zipcode, :integer
    add_column :users, :provider, :boolean
    add_column :users, :img_url, :string
  end
end
