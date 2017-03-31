class ExperimentsController < ApplicationController
  def new
    render 'experiments/_new.html.erb'
  end
  def create
    p "*" * 40
    p experiment_params
    p proposal_params
    p "*" * 40
    @proposal = Proposal.find(proposal_params)
    @experiment = Experiment.new(experiment_params)
    @experiment.scientist_id = current_user.id
    @experiment.proposal_id = @proposal.id

    p "*" * 40
    p @experiment
    p "*" * 40
    @experiment.save
    redirect_to proposal_path(@proposal)
  end

  def show
    @experiments = Experiment.all
    @experiment = Experiment.find(params[:id])
  end

  private
  def experiment_params
    params.require(:experiment).permit(:title, :results, :conclusions)
  end

  def proposal_params
    params.require(:proposal_id).to_i
  end
end
