class Equipment < ApplicationRecord
  has_many :equipment_projects
  has_many :projects, through: :equipment_projects
end
