class Observation < ApplicationRecord
  belongs_to :scientist, class_name: "User"
  belongs_to :observational, polymorphic: true
end
