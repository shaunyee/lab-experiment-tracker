class ProposalsController < ApplicationController

  def index
  	@proposals = Proposal.all
  end

  def new
  	@proposal = Proposal.new
  end

  def create
  	@proposal = Proposal.create(proposal_params)
  	redirect_to '/'
  end

end
