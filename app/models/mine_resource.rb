class MineResource < ActiveRecord::Base
  belongs_to :mineral
  belongs_to :mine
  
  validates :mine_id, :mineral_id, presence: true
  validates :daily_capacity, :monthly_capacity, numericality: true
end
