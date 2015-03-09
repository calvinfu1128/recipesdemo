class RecipesStyles < ActiveRecord::Migration
  def change
    create_table :recipes_styles do |t|
      t.integer :style_id, :recipe_id
    end
  end
end
