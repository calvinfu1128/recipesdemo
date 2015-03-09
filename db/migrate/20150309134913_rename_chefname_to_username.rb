class RenameChefnameToUsername < ActiveRecord::Migration
  def change
    rename_column :users, :chefname, :username
  end
end
