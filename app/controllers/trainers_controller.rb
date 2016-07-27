class TrainersController < ApplicationController
  before_action :authenticate_user!

  def index
    @trainers = Trainer.includes(:team).all
  end

  def edit
    @trainer = Trainer.includes(:scorings).find(params[:id])
    scorings = @trainer.scorings.order(:category_id)
    @form = TrainerForm.new(scorings: scorings)
  end

  def update
    @trainer = Trainer.includes(:scorings).find(params[:id])
    @form = TrainerForm.new(trainer_params)
    if @form.save
      redirect_to trainers_path, notice: 'Trainer was successfully updated.'
    else
      render :edit
    end
  end

  private
    def trainer_params
      params.require(:trainer_form)
    end
end
