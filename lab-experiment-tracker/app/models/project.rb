class Project < ApplicationRecord
  has_many :equipment_projects
  has_many :equipments, through: :equipment_projects
  has_many :comments
  has_many :observations
  belongs_to :scientist, :class_name => 'User', :foreign_key => 'scientist_id'
end
