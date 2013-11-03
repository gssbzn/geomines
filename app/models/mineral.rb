class Mineral < ActiveRecord::Base
  has_many :mine_resources
  has_many :mines, through: :mine_resource
  
  validates :name, presence: true, uniqueness: true
end
