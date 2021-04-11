class ThingsToMeasureController < ApplicationController
  before_action :verify_token, only: %i[index create]
  before_action :set_t_t_measure, only: %i[destroy]

  def index
    @things_to_measures = ThingsToMeasure.all
    render :all, status: :ok
  end

  def create
    @things_to_measure = current_user.things_to_measures.new(t_t_m_params)
    if @things_to_measure.save
      render :create, status: :created
    else
      render :not_save, status: :unprocessable_entity
    end
  end

  def destroy
    @things_to_measure.destroy
    render :destroy, status: :ok
  end

  private

  def set_t_t_measure
    @things_to_measure = Measurement.find(params[:id])
  rescue StandardError
    render :not_found, status: :not_found
  end

  def t_t_m_params
    params.require(:things_to_measure).permit(:name, :unit)
  end
end
