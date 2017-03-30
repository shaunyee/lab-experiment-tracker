class Procedure < ApplicationRecord
  belongs_to :experiment
  has_many :comments, as :commentable
  has_many :observations, as :observational
end
