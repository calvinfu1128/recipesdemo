class RenameChefidToUserid < ActiveRecord::Migration
  def change
    rename_column :likes, :chef_id, :user_id
    rename_column :recipes, :chef_id, :user_id
  end
end
