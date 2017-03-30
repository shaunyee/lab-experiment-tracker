class ExperimentsController < ApplicationController
  def new
    render 'experiments/_new.html.erb'
  end
  def create
    p "*" * 40
    p params
    @proposal = Proposal.find(params[:id])
    @experiment = Experiment.new(experiment_params)
    @experiment.scientist_id = current_user
    redirect_to experiments_path
  end

  def show
    @experiments = Experiment.all
  end

  private
  def experiment_params
    params.require(:experiment).permit(:id, :title, :results, :conclusions)
  end
end
