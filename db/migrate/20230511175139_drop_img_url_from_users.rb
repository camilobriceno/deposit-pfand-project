class DropImgUrlFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :img_url
  end
end
