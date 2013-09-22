class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :recipe
      t.text :ingredients
      t.integer :time_til_grub
      t.integer :skill
      t.integer :rank
      t.string :image

      t.timestamps
    end
  end
end
