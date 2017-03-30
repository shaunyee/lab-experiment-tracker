class ProposalsController < ApplicationController

  def index
    @proposal = Proposal.create(summary: "sdlkhflkadsj", hypothesis: "sdfadsf", user: User.first)
    @comment = @proposal.comments.new
  end

end
