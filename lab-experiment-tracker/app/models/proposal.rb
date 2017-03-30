class Proposal < ApplicationRecord
  belongs_to :user
  has_many :experiments
  has_many :comments, as :commentable
end
