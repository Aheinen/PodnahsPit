class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name, :description

      t.timestamps
    end
  end
end
