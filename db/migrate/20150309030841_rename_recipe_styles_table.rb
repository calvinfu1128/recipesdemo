class RenameRecipeStylesTable < ActiveRecord::Migration
  def change
    rename_table :recipes_styles, :recipe_styles
  end
end
