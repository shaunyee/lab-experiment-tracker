class ProceduresController < ApplicationController
	def create
		@experiment = Experiment.find(experiment_params)
		@procedure = Procedure.new(procedure_params)
		@procedure.experiment_id = @experiment.id

		@procedure.save
		redirect_to experiment_path(@experiment)
	end

	private
	def experiment_params
		params.require(:experiment_id).to_i
	end

	def procedure_params
		params.require(:procedure).permit(:body)
	end
end
