# @author Gustavo Bazan
# Model for managing mines
class Mine < ActiveRecord::Base
  has_many :mine_resources
  has_many :minerals, through: :mine_resource
  
  validates :name, presence: true, uniqueness: true
  validates :latitude, :longitude, presence: true, numericality: true
  
end
