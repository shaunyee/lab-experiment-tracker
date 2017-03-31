class Proposal < ApplicationRecord
  belongs_to :user
  has_many :experiments
  has_many :comments, as: :commentable

  def get_status
    if self.status == 1
      "open"
    elsif self.status == 2
      "in progress"
    elsif self.status == 3
      "closed"
    else
      "archived"
    end
  end

  def put_in_progress
    self.status = 2
  end

  def close_proposal
    self.status = 3
  end

  def archive_proposal
    self.status = 4
  end

end
