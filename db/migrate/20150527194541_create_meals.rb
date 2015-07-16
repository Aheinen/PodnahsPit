class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name, :description, :price
      t.integer :course_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
