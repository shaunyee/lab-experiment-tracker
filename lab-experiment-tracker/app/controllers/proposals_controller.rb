class ProposalsController < ApplicationController

  def index
  	@proposals = Proposal.all
  end

  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new(proposal_params)
    @proposal.user_id = session[:user_id]

    if @proposal.save
      redirect_to @proposal, notice: 'Proposal was successfully created.'
    else
      render :new, status: 422
    end
  end

private
  def proposal_params
    params.require(:proposal).permit(:summary, :hypothesis)
  end
end
