# @author Gustavo Bazan
# Model for managing minerals
class Mineral < ActiveRecord::Base
  has_many :mine_resources
  has_many :mines, through: :mine_resource
  
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
