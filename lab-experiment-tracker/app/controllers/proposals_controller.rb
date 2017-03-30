class ProposalsController < ApplicationController

  def index
  end

  def create
    @proposal = Proposal.new(proposal_params)
  end

end
