class RenameChefsTable < ActiveRecord::Migration
  def change
    rename_table :chefs, :users
  end
end
