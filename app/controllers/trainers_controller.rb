class TrainersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_trainer, except: [:index]

  def index
    @trainers = Trainer.includes(:team).all
  end

  def edit
    scorings = @trainer.scorings.order(:category_id)
    @form = TrainerForm.new(scorings: scorings)
  end

  def update
    @form = TrainerForm.new(trainer_params)
    if @form.save
      redirect_to trainers_path, notice: 'Trainer was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_trainer
      @trainer = Trainer.includes(:scorings).find(params[:id])
    end

    def trainer_params
      params.require(:trainer_form)
    end
end
