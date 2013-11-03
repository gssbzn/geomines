class CreateMineResources < ActiveRecord::Migration
  def change
    create_table :mine_resources do |t|      
      t.belongs_to :mine, index: true
      t.belongs_to :mineral, index: true      
      t.string :conditions
      t.float :daily_capacity
      t.float :monthly_capacity

      t.timestamps
    end
  end
end
