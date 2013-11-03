class CreateMines < ActiveRecord::Migration
  def change
    create_table :mines do |t|
      t.string :name
      t.text :details
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
