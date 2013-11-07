# @author Gustavo Bazan
# Model for managing mine-mineral ralation
class MineResource < ActiveRecord::Base
  belongs_to :mineral
  belongs_to :mine
  
  validates :mine_id, :mineral_id, presence: true
  validates :daily_capacity, :monthly_capacity, numericality: true
  validates :mineral, uniqueness: { scope: :mine,
    message: "Esta mina ya cuenta con este recurso" }
end
