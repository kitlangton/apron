class CreateRecipies < ActiveRecord::Migration
  def change
    create_table :recipies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
