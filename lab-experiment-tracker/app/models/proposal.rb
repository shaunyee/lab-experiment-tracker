class Proposal < ApplicationRecord
  belongs_to :user
  has_many :experiments
  has_many :comments, as: :commentable

  def get_status
    if self.status == 1
      "Open"
    elsif self.status == 2
      "In progress"
    elsif self.status == 3
      "Closed"
    else
      "Archived"
    end
  end

  def timetrack
    if self.status == 2
      start_time = self.updated_at
    elsif self.status == 3 || self.status == 4
     self.updated_at - start_time
    end

  end

end
